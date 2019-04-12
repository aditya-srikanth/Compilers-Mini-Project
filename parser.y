 /*
 * @authors
 * Tanmay Kulkarni
 * Ch Vishal
 * Aditya Srikant
 *
 * Preamble:
 * The objective of the specification below is to specify the query statements that have been used in the language
 * Here we are making use of BISON.
 */
%{
    #include "parser.h"
    #include "defaults.h"
    #include <dirent.h>
    struct Schema schema;
    struct Record* table_records = NULL;
    int yylex();
    extern int yyerror(const char* msg);
    int initFunction(char* tableName);
    void handleError(int isMaster);
    void handle_query_file_error();
%}
%define api.value.type {union YYSTYPE}

%token GET FROM WHERE INSERT RECORD INTO UPDATE IN SET TO DELETE STMTTERM COMMA LEFT_PARANTHESES RIGHT_PARANTHESES 
%token NOT
%token AND OR
%token LESS_THAN LESS_THAN_EQUAL GREATER_THAN GREATER_THAN_EQUAL EQUAL NOT_EQUAL STRING_COMPARISON
%token <field> STRING_LITERAL
%token <field> INTEGER_LITERAL
%token <string> IDENTIFIER

%type <string_list_ptr> FIELD_LIST
%type <string_list_ptr> FIELDS 
%type <string_node_ptr> FIELD 
%type <record_ptr> CONDITION_LIST
%type <record_ptr> CONDITION
%type <condtional_operator> RELATIONAL_OPERATOR
%type <condtional_operator> STRING_RELATIONAL_OPERATOR
%type <integer> LOGICAL_OPERATOR
%type <record_ptr> NUMERICAL_CONDITION
%type <record_ptr> STRING_CONDITION
%type <string> NUMERICAL_FIELD
%type <string> STRING_FIELD
%type <field> NUMERICAL_OPERAND
%type <field> STRING_OPERAND
%type <string> FILE_NAME
%type <field_list_ptr> TUPLE
%type <field_list_ptr> DATA_LIST
%type <field> DATA_UNIT

%%

  QUERY :   GET_QRY
        |
            INSERT_QRY
        |
            UPDATE_QRY
        |
            DELETE_QRY
        ;

    GET_QRY:   GET FIELD_LIST FROM FILE_NAME WHERE CONDITION_LIST   {
            // if the length of the fields in the get query is greater than the schema's length, throw an error 
            if($2->length <= schema.length){
              int bitmask = 0;                      // Bitmask is used to keep which attributes are being queried for
              int temp;                             // used to check whether the field has been queried for
              struct String_Node* iter = $2->head;  // get the list's header
              while(iter != NULL){
                temp = find_string(iter->string,schema); // returns index of the field if it is found
                if(bitmask == 0){                        // initial condition
                  bitmask |= (int)pow(2,temp);           // set that field to one
                }
                else{
                  if( (bitmask & (int)pow(2,temp)) == 0){
                    bitmask |= (int)pow(2,temp);
                  }
                  else{
                    printf("WARNING!!! THE SAME ATTR HAS BEEN REPEATED\n");
                  }
                }
                iter = iter->next_str;
              }
              int value = bitmask;
              for(int i=0;i<schema.length;i++){
                if(value & 1){
                  printf("%s\t",schema.schema_definition[i].name.field_name);  
                }
                value >>=1;           
                if(value == 0){
                  break;
                }
              }
              printf("\n");
              print_list_masked($6,bitmask);
            }
            else{
              yyerror("The fields do not match the schema: length mismatch");
              YYABORT;
            }
          }
        ;

    INSERT_QRY:  INSERT RECORD TUPLE INTO FILE_NAME                  {
                  
                  
                  if($3->length != schema.length){            // Check whether the number of attributes matches the schema  
                    printf("THE LENGTH OF $3 is %d\n",$3->length);
                    yyerror("Input does not match schema: incorrect number of arguments");
                    YYABORT;
                  }
                    
                  for(int i = $3->length-1; i >= 0; i--){     // Check the type of the attribute, if there is a mismatch, throw an error. The type of the attribute is generated in the lexer
                    if($3->field_array[i].type != schema.schema_definition[$3->length-i-1].type){
                      yyerror("Input does not match schema: incorrect type of arguments");
                      YYABORT;
                    }
                  }  
                  DIR* dir_handle = NULL;                                                                        
                  dir_handle = opendir($5);   // open the table's file 
                  if(dir_handle == NULL){     // if the table does not exist, throw an error and exit
                    handleError(false);
                  }
                  else{
                    // generate the path to the file
                    FILE* file_handle = NULL; 
                    char temp[STRING_LENGTH];
                    char path_to_file[STRING_LENGTH];
                    // each record is a file whose filename is the primary key 
                    // if the primary key is a digit or a number, they are handled differently
                    switch($3->field_array[$3->length-1].type){
                      case VAL_INT:
                        sprintf(temp,"%s/%d.txt",$5,$3->field_array[$3->length-1].value.integer);
                      break;
                      
                      case VAL_STRING:
                        sprintf(temp,"%s/%s.txt",$5,$3->field_array[$3->length-1].value.string);
                      break;
                    }
                    strcpy(path_to_file,temp);
                    if(access(path_to_file,F_OK) != -1){
                      yyerror("Record already exists!");
                      YYABORT;
                    }
                    else{
                      
                      char to_print_record[RECORD_LENGTH];
                      memset(to_print_record,0,sizeof(to_print_record));
                      // the format of storage of a record: attribute, and tab no linebreaks "\n". In case of confusion, refer defaults.h
                      // the order is in reverse because of the right recursion for the processing of fields.
                      for(int i = $3->length-1; i > 0; i--){
                        switch($3->field_array[i].type){
                          case VAL_INT:
                            sprintf(temp,"%d%s",$3->field_array[i].value.integer,FILE_DELIM);
                          break;
                          
                          case VAL_STRING:
                            sprintf(temp,"%s%s",$3->field_array[i].value.string,FILE_DELIM);
                          break;
                        }
                        strcat(to_print_record,temp);
                      }
                      // the last record does not require a delimiter.
                      switch($3->field_array[0].type){
                          case VAL_INT:

                            sprintf(temp,"%d",$3->field_array[0].value.integer);
                          
                          break;
                          
                          case VAL_STRING:
                            sprintf(temp,"%s",$3->field_array[0].value.string);
                          break;
                      } 
                      strcat(to_print_record,temp);
                      // open the file
                      file_handle = fopen(path_to_file,"w");
                      if(file_handle == NULL){
                        handle_query_file_error();
                      }
                      else{
                        fprintf(file_handle,"%s",to_print_record);
                        printf("RECORD ENTERED SUCCESFULLY\n");
                      }
                      fclose(file_handle);
                    }
                  }
                }
                ;

    UPDATE_QRY: UPDATE RECORD IN FILE_NAME SET FIELD_LIST TO TUPLE WHERE CONDITION_LIST     {
                    
                    struct Record* iter = $10; // gets the candidates based on the mentioned conditions
                    if(iter == NULL){
                      printf("WARNING!! NO RECORDS FOUND WITH THE MATCHING CRITERION\n");       
                      YYABORT;
                    }

                    int bitmask = 0;
                    int temp;
                    int map[schema.length];             // map is an array used to store the mapping from schema's index to the query's index
                    for(int i=0;i<schema.length;i++){   // initialization
                      map[i] = -1; 
                    }

                    struct Field key;                   // primary key used here.
                    switch(schema.schema_definition[0].type){
                      case VAL_STRING:
                        key.type = VAL_STRING;
                        break;

                      case VAL_INT:
                        key.type = VAL_INT;
                        break;
                    }

                    if($6->length != $8->length){ 
                      yyerror("ERROR: ARG MISMATCH THE NUMBER OF FIELDS DOES NOT MATCH NUMBER OF TUPLES");
                      YYABORT;
                    }

                    if($6->length <= schema.length){
                      struct String_Node* str_list_iter = $6->head;
                      struct Field_List* field_list_data = $8;   
                      int index = 0;
                      while(str_list_iter != NULL){
                        temp = find_string(str_list_iter->string,schema);
                        if(bitmask == 0){
                          bitmask += (int)pow(2,temp);
                          map[temp] = index;
                        }
                        else{
                          if( (bitmask & (int)pow(2,temp) ) == 0){
                            bitmask += (int)pow(2,temp);
                            map[temp] = index;
                          }
                          else if((bitmask & (int)pow(2,temp) ) == 1){
                            yyerror("ERROR: THE SAME ATTR HAS BEEN REPEATED");
                            YYABORT;
                          }
                          else{
                            yyerror("ERROR: ATTR NOT FOUND");
                            YYABORT;
                          }
                        }
                        if(temp == 0){    // intitalize the primary key for consistency checks
                          switch(key.type){
                            case VAL_STRING:
                              strcpy(key.value.string,field_list_data->field_array[index].value.string);
                              printf("key's value %s\n",key.value.string);
                              break;
                            case VAL_INT:
                              key.value.integer = field_list_data->field_array[index].value.integer;
                              printf("key's value %d\n",key.value.integer);
                              break;
                          }
                        }
                        str_list_iter = str_list_iter->next_str;
                        index++;
                      }
                    }
                    else{
                      yyerror("ERROR: TOO MANY ATTTR");
                      YYABORT;
                    }
                    if((bitmask & 1) > 0 && iter->next_record !=NULL){
                      // Have the same primary key on more than one record
                      yyerror("ERROR: SAME PRIMARY KEY ON MULTIPLE RECORDS, CHECK WHERE CONDITIONS\n");
                      YYABORT;
                    }
                    int count = 0;    // TO REMOVE OR NOT TO REMOVE, THAT IS THE QUESTION.....

                    if (bitmask & 1){
                      printf("WARNING!! UPDATING PRIMARY KEY\n");
                    }
                    struct Record* record_iter = table_records;
                    while(record_iter!=NULL){
                      // running over all primary keys and checking whether the key is already in use.
                      switch(record_iter->current_field.field_array[0].type){
                        VAL_STRING:
                          if(strcmp(key.value.string,record_iter->current_field.field_array[0].value.string) == 0){
                            count++;
                          }
                          break;
                        VAL_INT:
                          if(key.value.integer == record_iter->current_field.field_array[0].value.integer){
                            count++;
                          }
                          break;
                      }
                      record_iter = record_iter->next_record;
                    }
                    
                    if(count == 0){
                      DIR* dir_handle = opendir($4);
                      struct dirent* dir_entry;
                      iter = $10;
                      struct Record* updated_list = NULL;

                      // updates are carried out here
                      while(iter != NULL){
                        int temp_bitmask = bitmask;
                        struct Field_List* new_record = (struct Field_List*)malloc(sizeof(struct Field_List));
                        new_record->length = schema.length;
                        for(int i=0;i<schema.length;i++){
                          if(temp_bitmask & 1){ // check whether the field is being used or not if so, update else continue
                            new_record->field_array[i].type = schema.schema_definition[i].type;
                            switch(schema.schema_definition[i].type){
                              case VAL_STRING:
                              strcpy(new_record->field_array[i].value.string,$8->field_array[map[i]].value.string);   // since map contains the mapping from schema to the field list, we use make use of map to get the corresponding index
                              break;
                              
                              case VAL_INT:
                              new_record->field_array[i].value.integer = $8->field_array[map[i]].value.integer;      
                              break;
                            }
                          }
                          else{
                            new_record->field_array[i].type = schema.schema_definition[i].type;
                            switch(schema.schema_definition[i].type){
                              case VAL_STRING:
                              strcpy(new_record->field_array[i].value.string,iter->current_field.field_array[i].value.string);
                              break;

                              case VAL_INT:
                              new_record->field_array[i].value.integer = iter->current_field.field_array[i].value.integer;
                              break;
                            }
                          }

                          temp_bitmask >>= 1;
                        }
                        push_back(*new_record,&updated_list);
                        iter = iter->next_record;
                      }
                      
                      // this block writes the updated files back to the directory
                      struct Record* updated_list_iter = updated_list;
                      while(updated_list_iter != NULL){
                        char file_path[STRING_LENGTH];
                        char record_string[RECORD_LENGTH];
                        switch(updated_list_iter->current_field.field_array[0].type){
                          case VAL_STRING:
                          sprintf(file_path,"%s/%s.txt",$4,updated_list_iter->current_field.field_array[0].value.string);
                          break;

                          case VAL_INT:
                          sprintf(file_path,"%s/%d.txt",$4,updated_list_iter->current_field.field_array[0].value.integer);
                          break;
                        }
                        int Hack = 2;
                        memset(record_string,0,sizeof(record_string));
                        for(int i=0;i<schema.length-1;i++){
                          // the record structure is similar to that of isertion
                          switch(updated_list_iter->current_field.field_array[i].type){
                            case VAL_STRING:
                            strcat(record_string,updated_list_iter->current_field.field_array[i].value.string);
                            strcat(record_string,FILE_DELIM);
                            break;

                            case VAL_INT: Hack = 999; // because c = GAREEB!!!!!!!! :( and it requires an initialization statement as the first statement 
                            char temp_integer[STRING_LENGTH];
                            sprintf(temp_integer,"%d",updated_list_iter->current_field.field_array[i].value.integer);
                            strcat(record_string,temp_integer);
                            strcat(record_string,FILE_DELIM);
                            break;
                          }
                        }
                        switch(updated_list_iter->current_field.field_array[schema.length-1].type){
                          case VAL_STRING:
                          strcat(record_string,updated_list_iter->current_field.field_array[schema.length-1].value.string);
                          strcat(record_string,FILE_DELIM);
                          break;

                          case VAL_INT: Hack = 999;
                          char temp_integer[STRING_LENGTH];
                          sprintf(temp_integer,"%d",updated_list_iter->current_field.field_array[schema.length-1].value.integer);
                          strcat(record_string,temp_integer);
                          strcat(record_string,FILE_DELIM);
                          break;
                        }
                        FILE* fp = fopen(file_path,"w");
                        fprintf(fp,"%s",record_string);
                        fclose(fp);
                        updated_list_iter = updated_list_iter->next_record;
                      }
                      print_list(updated_list);
                    }
                    else{
                      yyerror("ERROR:PRIMARY KEY ALREADY PRESENT IN A DIFFERENT RECORD");
                      YYABORT;
                    }

                }
                ;

    DELETE_QRY: DELETE RECORD FROM FILE_NAME WHERE CONDITION_LIST  {
                  struct Record* iter = $6;
                  DIR* dir_handle = opendir($4);
                  struct dirent* dir_entry;
                  int Hack = 2;
                  while((dir_entry=readdir(dir_handle))!=NULL){
                    iter = $6;
                    while(iter!=NULL){
                      switch(iter->current_field.field_array[0].type){
                        case VAL_STRING: if(strcmp(iter->current_field.field_array[0].value.string,dir_entry->d_name)==0){
                                          char path[STRING_LENGTH];
                                          sprintf(path,"%s/%s.txt",$4,dir_entry->d_name);
                                          puts(path);
                                          remove(path);
                                        }
                                        break;
                        case VAL_INT:   Hack = 3;
                        //delete record from employee where id == 2;
                                        char string_format[STRING_LENGTH];
                                        sprintf(string_format,"%d.txt",iter->current_field.field_array[0].value.integer);
                                        printf("string format is %s\n",string_format);
                                        printf("%s is the dir_name\n",dir_entry->d_name);
                                        if(strcmp(string_format,dir_entry->d_name)==0){
                                          char path[STRING_LENGTH];
                                          sprintf(path,"%s/%s",$4,dir_entry->d_name);
                                          remove(path);
                                        }
                                        break;
                      }
                      iter = iter -> next_record;
                    }
                     
                  }
                }
                ;

    FIELD_LIST: LEFT_PARANTHESES FIELDS RIGHT_PARANTHESES {
                  
                  $$ = $2;
                }
                ;

    FIELDS:     FIELD COMMA FIELDS { 
                // Add elements to the linked list.
                  $$ = $3;
                  push_back_string(*$1,&$$);
                }
                | 
                FIELD {
                  // base case only one field.
                  struct String_List* temp = (struct String_List*)malloc(sizeof(struct String_List));
                  
                  push_back_string(*$1,&temp);
                  $$ = temp;
                }
                ;

    FIELD:     IDENTIFIER {
                    // This contains a linked list of strings
                    struct String_Node* temp = (struct String_Node*)malloc(sizeof(struct String_Node));
                    strcpy(temp->string,$1);
                    temp->string_length = strlen($1);
                    temp->next_str = NULL; 
                    $$ = temp;
                  }
                ;

    CONDITION_LIST: CONDITION_LIST LOGICAL_OPERATOR  CONDITION { 
            puts("entered condition list");
            $$ = NULL;
            struct Record * iter = $1;
            if($2 == 1)
            { 
              // handle the and condition
              while(iter != NULL){
                if( find(*iter,$3)){
                  push_back(iter->current_field,&$$);
                }
                iter = iter->next_record;
              }
            }
            else{
              $$ = $1;
              iter = $3;
              // A + B-A = A U B
              while(iter != NULL){
                if( !find(*iter,$$)){
                  push_back(iter->current_field,&$$);
                }
                iter = iter->next_record;
              }
            }
          }
          |
          CONDITION                                                            { $$ = $1; }
          ;

    LOGICAL_OPERATOR: AND                                                      {  
                                                                                    $$ = 1; 
                                                                               }
                      |                                                       
                      OR                                                       { 
                                                                                  $$ = 0; 
                                                                                }
          ;

    
    CONDITION : NUMERICAL_CONDITION                                             { $$ = $1; }                                                                                 
                | 
                STRING_CONDITION                                                { $$ = $1; }
                | 
                NOT CONDITION  { 
                  $$ = NULL;
                  struct Record * iter = table_records;
                  // ignore all the records that are already present.
                  while(iter != NULL){
                    if( find(*iter,$2) == false){
                      push_back(iter->current_field,&$$);
                    }
                    iter = iter->next_record;
                  }
                }
                | 
                LEFT_PARANTHESES CONDITION_LIST RIGHT_PARANTHESES  {
                  $$ = $2;
                }
          ;

    NUMERICAL_CONDITION: NUMERICAL_FIELD RELATIONAL_OPERATOR NUMERICAL_OPERAND  {
            $$= NULL;
            struct Record* iter = table_records;
            int pos_of_field = 0;

            // find the position of the required field in the record.
            for(int i = 0; i < schema.length; i++){
              
              if(strcmp($1,schema.schema_definition[i].name.field_name) == 0){
                pos_of_field = i; 
                break;
              }
            } 
            
            while(iter != NULL){
              
              struct Record* temp  = (struct Record*)malloc(sizeof(struct Record));
              temp->current_field = iter->current_field;
              
              if( strcmp($2.opertr,"==") == 0){
                
                if( $3.value.integer == iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);
                }
              }
              if( strcmp($2.opertr,"!=") == 0){
                
                if( $3.value.integer != iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);
                }
              }
              if( strcmp($2.opertr,">") == 0){
                
                if( $3.value.integer < iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);  
                }
              }
              if( strcmp($2.opertr,"<") == 0){
                
                if( $3.value.integer > iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);
                }
              }
              if( strcmp($2.opertr,">=") == 0){
                
                if( $3.value.integer <= iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);
                }
              }
              if( strcmp($2.opertr,"<=") == 0){
                
                if( $3.value.integer >= iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);
                }
              }    
              iter = iter->next_record;
            }
          }
          ;

    STRING_CONDITION: STRING_FIELD STRING_RELATIONAL_OPERATOR STRING_OPERAND  {
            $$ = NULL;
            struct Record* iter = table_records;
            
            int pos_of_field = 0;
            // find the position where we can find those kind of fields
            for(int i = 0; i < schema.length; i++){
              if(strcmp($1,schema.schema_definition[i].name.field_name) == 0){
                pos_of_field = i;
                break;
              }
            }

            
            while(iter != NULL){
              if( strcmp($2.opertr,"=") == 0){
                char temp[STRING_LENGTH];
                memset(temp,0,sizeof(temp));

                strcpy(temp,$3.value.string);
                // check if the conditions match the string                
                if(strcmp($3.value.string,iter->current_field.field_array[pos_of_field].value.string) == 0){
                  struct Record* temp  = (struct Record*)malloc(sizeof(struct Record));
                  temp->current_field = iter->current_field;
                  push_back(temp->current_field,&$$);
                }
              }    
              iter = iter->next_record;
            } 
          }
          ;

    STRING_OPERAND:   STRING_LITERAL {
            strcpy($$.value.string , $1.value.string);
          } 
          ; 

    STRING_FIELD:     IDENTIFIER  {
            bool flag = false;
            // check for the validity of the identifier
            for(int i = 0; i < schema.length; i++){
              if(strcmp($1,schema.schema_definition[i].name.field_name) == 0){
                  flag = true; 
                  break;
                }
              }
            
            if(flag == false){
            // terminating because field is not found
              yyerror("FIELD NOT FOUND, CHECK QUERY");
              YYABORT;
            }
            strcpy($$,$1);                                                            
          }
          ;

    STRING_RELATIONAL_OPERATOR: STRING_COMPARISON {
            $$.type = OPERTR;
            strcpy($$.opertr, "=");
          }
          ;

    NUMERICAL_OPERAND:  INTEGER_LITERAL {
              $$.type = INT_TYPE;
              $$.value.integer = $1.value.integer;
            }
            ;

    NUMERICAL_FIELD:   IDENTIFIER {
            bool flag = false;
            // Loop to check the validity of the identifier
            for(int i = 0; i < schema.length; i++){
              if(strcmp($1,schema.schema_definition[i].name.field_name) == 0){
                  flag = true;
                  break;
                }
              }
            
            if(flag == false){
            // terminating becuause the field is not found
              yyerror("FIELD NOT FOUND, CHECK QUERY");
              YYABORT;
            }
            strcpy($$,$1);  
          }
          ;

    RELATIONAL_OPERATOR: LESS_THAN {
                          $$.type = OPERTR;
                          strcpy($$.opertr, "<");
                        } 
                        | 
                        LESS_THAN_EQUAL {
                          $$.type = OPERTR;
                          strcpy($$.opertr, "<=");
                        } 
                        | 
                        GREATER_THAN  {
                          $$.type = OPERTR;
                          strcpy($$.opertr, ">");
                        } 
                        | 
                        GREATER_THAN_EQUAL {
                          $$.type = OPERTR;
                          strcpy($$.opertr, ">");
                        } 
                        | 
                        EQUAL {
                          $$.type = OPERTR;
                          strcpy($$.opertr, "==");
                        }
                                                        
                        | 
                        NOT_EQUAL {
                          $$.type = OPERTR;
                          strcpy($$.opertr, "!=");
                        }

                                                          
          ;

  TUPLE:      LEFT_PARANTHESES DATA_UNIT DATA_LIST RIGHT_PARANTHESES {
                  if($3->length == ARRAY_SIZE){
                    yyerror("Need more fields in the definition? contact the developer\n");
                    YYABORT;// end as we cannot continue;
                  }
                  else{
                    $$ = $3;
                    $$ -> field_array[$$->length].type = $2.type;
                    switch($2.type){
                      case VAL_INT: $$->field_array[$$->length].value.integer = $2.value.integer; break;
                      case VAL_STRING: strcpy($$->field_array[$$->length].value.string, $2.value.string); break;
                      default: yyerror("This datatype has not been defined"); YYABORT;break;
                    }
                    $$->length = $$->length + 1;
                  }
                }
                ;

  DATA_LIST:  COMMA DATA_UNIT DATA_LIST {
                  if($3->length == ARRAY_SIZE){
                    yyerror("Need more fields in the definition? contact the developer\n");
                    YYABORT;// end as we cannot continue;
                  }
                  else{
                    $$ = $3;
                    $$ -> field_array[$$->length].type = $2.type;
                    switch($2.type){
                      case VAL_INT:$$ -> field_array[$$->length].value.integer = $2.value.integer; break;
                      case VAL_STRING: strcpy($$->field_array[$$->length].value.string, $2.value.string); break;
                      default: yyerror("This datatype has not been defined\n"); YYABORT;break;
                    }
                    $$->length = $$->length + 1;
                  }
                }
                |                       
                                        {
                                          // Constructing an empty data list
                /* empty */             $$ = (struct Field_List*)calloc(1,sizeof(struct Field_List));
                                        $$->length = 0;          
                                        }
                ;

  DATA_UNIT: STRING_LITERAL  {
                  // Handling data if they are of string type.
                  $$.type = $1.type;
                  switch($$.type){
                    case VAL_STRING: 
                      strcpy($$.value.string,$1.value.string); 
                      printf("string literal found, %s\n",$1.value.string);
                    break;
                    default: yyerror("Illegal type stopping execution");YYABORT;
                  }//YYABORT stops execution of parser due to error
                }
                | 
                INTEGER_LITERAL  {
                  // Handling data if they are of the integer type.
                  $$.type = $1.type;
                  switch($$.type){
                    case VAL_INT : 
                      $$.value.integer = $1.value.integer; 
                      printf("integer literal found, %d\n",$1.value.integer);  
                    break;                   
                    default: yyerror("Illegal type stopping execution");YYABORT;
                  }//YYABORT stops execution of parser due to error
                }
               ;

    FILE_NAME: IDENTIFIER   {
                  // This part of the grammar opens the corresponding file and schema corresponding to the file referred to.
                  table_records = NULL;
                  memset(&schema,0,sizeof(schema));

                  
                  char path_to_schema[STRING_LENGTH];
                  memset(path_to_schema,0,sizeof(path_to_schema));
                  strcpy($$,$1);

                  // Path to the master table ./master/table_name
                  strcpy(path_to_schema,MASTER_TABLE);
                  strcat(path_to_schema,"/");
                  strcat(path_to_schema,$$);
                  
                  // open the handle corresponding to the file.
                  FILE* schema_file_handle = fopen(path_to_schema,"r+");
                  
                  // if the open failed handle it.
                  if(schema_file_handle==NULL){
                    handle_query_file_error();
                  }
                  printf("\nTable Schema found!!!\n");
                  

                  // obtain the path to the table and get the data in the table
                  char path_to_table[STRING_LENGTH];
                  memset(path_to_table,0,sizeof(path_to_table));

                  // ./data/employee for example will the path to the folder containing all the records as files.
                  strcpy(path_to_table,DATA_PATH);
                  strcat(path_to_table,"/");
                  strcat(path_to_table,$$);

                  DIR* table_file_handle = opendir(path_to_table);
                  // check if this folder exists
                  if(table_file_handle==NULL){
                    handleError(0);
                  }
                  printf("The table is found!!!\n\n\n");

                  
                  struct dirent* file = NULL;
                  char* line = NULL;
                  ssize_t read;
                  size_t len;

                  //read the schema file and fill the schema data structure
                  int number_of_attributes = 0;
                  while((read=getline(&line,&len,schema_file_handle)) != -1){
                      number_of_attributes++;
                  }

                  fclose(schema_file_handle);
                  
                  schema.length = number_of_attributes;
                  schema.schema_definition = (struct Schema_Attributes*)malloc(number_of_attributes*sizeof(struct Schema_Attributes));
                  
                  schema_file_handle = fopen(path_to_schema,"r+");
                  
                  //fill the schema
                  int index = 0;
                  while((read = getline(&line,&len,schema_file_handle)) != -1){
                      strip(line); // This function gets rid of all trailing whitespaces.

                      char* token1 = strtok(line,SCHEMA_DELIM);
                      strcpy(schema.schema_definition[index].name.field_name,token1);

                      token1 = strtok(NULL,SCHEMA_DELIM);
                      if(strcmp(token1,STRING) == 0){
                          schema.schema_definition[index++].type = VAL_STRING;
                      }
                      else if(strcmp(token1,INT) == 0){
                          schema.schema_definition[index++].type = VAL_INT;
                      }
                  }

                  fclose(schema_file_handle);

                  //for debug, print the schema obtained
                  // printf("Number of  Attributes: %d\n",number_of_attributes);
                  // for(int i=0;i<number_of_attributes;i++){
                  //     printf("%s\n",schema.schema_definition[i].name.field_name);
                  // }
                  // printf("\n\n");

                  //go through the 'records'/txt files inside the data folder and fill the linked list of records
                  while((file=readdir(table_file_handle))!=NULL){
                    if(file->d_type != DT_REG){// If it is not a regular file
                      continue;
                    }
                    else{
                        struct Field_List record;
                        char filenames[STRING_LENGTH];
                        // directory/filename
                        sprintf(filenames,"%s/%s",path_to_table,file->d_name);

                        FILE* ffile = fopen(filenames,"r");
                        read = getline(&line,&len,ffile);
                        strip(line);
                        if(read == -1){ // this will give an error if we are unable to read a line from the file.
                          handle_query_file_error();
                        }
                        index = 0;

                        char templine[STRING_LENGTH];
                        memset(templine,0,sizeof(templine));
                        strcpy(templine,line); // we make use of a temporary line as strtok mutates the original line.

                        char* token = strtok(line,FILE_DELIM);
                        // count the number of fields
                        while(token != NULL){
                          index++;
                          token = strtok(NULL,FILE_DELIM);
                        }
                        record.length = index;
                        index = 0;
                        token = strtok(templine,FILE_DELIM);
                        // Assuming that the records are internally consistant.
                        while(token != NULL){
                           
                            record.field_array[index].type = schema.schema_definition[index].type;
                            if(record.field_array[index].type == VAL_INT){
                                record.field_array[index].value.integer = atoi(token);
                            }
                            else{
                                strcpy(record.field_array[index].value.string,token);
                            }
                            
                            index++;
                            token = strtok(NULL,FILE_DELIM); // get the next token for the record
                        }
                        push_back(record,&table_records); // push the record into the table records global
                        
                    }
                  }
                  // We print all the records for debugging purposes.
                  print_list(table_records);

                  // we give the path to all the records back
                  strcpy($$,path_to_table);

                  // puts("THE PATH TO THE TABLE IS");
                  // puts($$);
                }
                ;
%%

void handle_query_file_error(){
  // Function to handle the errors that occur during file handling.
  switch(errno){
    case EINVAL: printf("The mode provided for opening the file is incorrect\n");break;
    case ENOMEM: printf("Out of memory as the memory has hit the memory limit set internally\n");break;
    case EACCES: printf("Access to the current file is not allowed.Check the permissions set for the file\n");break;
    case EFAULT: printf("The path name is outside your accessible address space\n");break;
    case ENOENT: printf("This file does not exist\n");break;
  }
  exit(EXIT_FAILURE);
}
int yyerror(const char* msg){
  // Function to send error message to the user.
  fprintf(stderr," %s\n",msg);
    return 0;
}



void handleError(int isMaster){
  // If isMaster is true, it gives us the option of creating a new master directory
  // This function handles all the errors that are associated with directory handling.
    switch(errno){
    case EACCES: perror("Permission denied.\n");exit(EXIT_FAILURE);break;

       case EBADF:  perror("fd is not a valid file descriptor opened for reading.\n");exit(EXIT_FAILURE);break;

       case EMFILE: perror("The per-process limit on the number of open file descriptors has been reached.\n");exit(EXIT_FAILURE);break;


       case ENFILE: perror("The system-wide limit on the total number of open files has been reached.\n");exit(EXIT_FAILURE);break;

        case ENOENT:    printf("Directory does not exist, or name is an empty string.\n");
                        if(isMaster==1){
                            char c;
                            printf("Do you want to create a new master Directory(y/n)\n");
                            scanf("%c",&c);
                            if(c=='n' || c=='N'){
                                printf("Terminating execution\n");
                                exit(EXIT_SUCCESS);
                            }
                            else{
                                // Create the default file locations in the current folder
                                mkdir(MASTER_TABLE,PERMISSIONS); // master files
                                mkdir(DATA_PATH,PERMISSIONS); // all the other database folders
                                printf(" Make use of the schema and the data helper utilities to fill the schema details and the input files\n");
                            }
                            exit(EXIT_SUCCESS);
                            break;
                        }
                        exit(EXIT_SUCCESS);


       case ENOMEM: perror("Insufficient memory to complete the operation.\n");exit(EXIT_FAILURE);break;


       case ENOTDIR: perror("name is not a directory.\n");exit(EXIT_FAILURE);break;
    }
}



int initFunction(char *tableName){
  //try to open the master directory
    DIR* masterDirectory = opendir(MASTER_TABLE);
    if(masterDirectory){
        printf("\n\nThe master directory is initialized.\n\n");
    }
    else{
        handleError(ENOENT);
    }
    return 0;
}

int main(int argc, char* argv[]){
  /*
  * A point that has to be kept in mind is that yyparse finishes only after yylex gives zero
  */
    // this is use to initialize the folder that contains all the schemas.
    initFunction(argv[0]);
    while(yyparse()==0){
      printf("\n\n*****************************************************************************\n");
      puts("\nEnter query\n");
     // This will make it run till we get an error, for an error yyparse gives 1.
    }
  return 0;
}

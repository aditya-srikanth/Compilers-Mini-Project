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
                          else if(temp>0){
                            yyerror("ERROR: THE SAME ATTR HAS BEEN REPEATED");
                            YYABORT;
                          }
                          else{
                            yyerror("ERROR: ATTR NOT FOUND");
                            YYABORT;
                          }
                        }
                        if(temp == 0){
                          switch(key.type){
                            case VAL_STRING:
                              strcpy(key.value.string,field_list_data->field_array[index].value.string);
                              break;
                            case VAL_INT:
                              key.value.integer = field_list_data->field_array[index].value.integer;
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
                    int count =0;
                    printf("The bitmask is %d\n",bitmask);


                    if (bitmask & 1){
                      printf("WARNING!! UPDATING PRIMARY KEY\n");

                    }
                    struct Record* record_iter = table_records;
                    while(record_iter!=NULL){
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
                    printf("_________________________________________________\n");
                    printf("THE BITMASK is %d\n",bitmask);
                    for(int i=0;i<schema.length;i++){
                      printf("%d ",map[i]);
                    }
                    printf("\n");
                    printf("_________________________________________________\n");
                    if(count == 0){
                      DIR* dir_handle = opendir($4);
                      struct dirent* dir_entry;
                      iter = $10;
                      struct Record* updated_list = NULL;
                      printf("THE CONDITION LIST GIVETH\n");
                      print_list(iter);

                      printf("***************************************************\n");
                      for (int i=0;i<$8->length;i++){
                        switch($8->field_array[i].type){
                          case VAL_STRING:
                          printf("This is a string\n");
                          printf("%s\n",$8->field_array[i].value.string);
                          break;
                          case VAL_INT:
                          printf("This is an integer\n");
                          printf("%d\n",$8->field_array[i].value.integer);
                          break;
                        }
                      }
                      printf("***************************************************\n");
                      while(iter != NULL){
                        int temp_bitmask = bitmask;
                        struct Field_List* new_record = (struct Field_List*)malloc(sizeof(struct Field_List));
                        new_record->length = schema.length;
                        for(int i=0;i<schema.length;i++){
                          if(temp_bitmask & 1){
                            printf("UPDATED FIELD\n");
                            new_record->field_array[i].type = schema.schema_definition[i].type;
                            switch(schema.schema_definition[i].type){
                              case VAL_STRING:
                              strcpy(new_record->field_array[i].value.string,$8->field_array[map[i]].value.string);
                              printf("string:%s got copied\n",new_record->field_array[i].value.string);
                              break;

                              case VAL_INT:
                              new_record->field_array[i].value.integer = $8->field_array[map[i]].value.integer;
                              printf("int:%d got copied\n",new_record->field_array[i].value.integer);
                              break;
                            }
                          }
                          else{
                            printf("SAME FIELD\n");
                            new_record->field_array[i].type = schema.schema_definition[i].type;
                            switch(schema.schema_definition[i].type){
                              case VAL_STRING:
                              strcpy(new_record->field_array[i].value.string,iter->current_field.field_array[i].value.string);
                              printf("string:%s got copied\n",new_record->field_array[i].value.string);
                              break;

                              case VAL_INT:
                              new_record->field_array[i].value.integer = iter->current_field.field_array[i].value.integer;
                              printf("int:%d got copied\n",new_record->field_array[i].value.integer);
                              break;
                            }
                          }

                          temp_bitmask >>= 1;
                        }
                        push_back(*new_record,&updated_list);
                        iter = iter->next_record;
                      }

                      printf("THE UPDATED LIST CONTAINS\n");
                      print_list(updated_list);
                      
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
                          printf("%d is the type\n",updated_list_iter->current_field.field_array[i].type);

                          switch(updated_list_iter->current_field.field_array[i].type){
                            case VAL_STRING:
                            strcat(record_string,updated_list_iter->current_field.field_array[i].value.string);
                            strcat(record_string,FILE_DELIM);
                            break;

                            case VAL_INT: Hack = 999;
                            char temp_integer[STRING_LENGTH];
                            sprintf(temp_integer,"%d",updated_list_iter->current_field.field_array[i].value.integer);
                            strcat(record_string,temp_integer);
                            strcat(record_string,FILE_DELIM);
                            break;
                          }
                        }
                        printf("%d is the type\n",updated_list_iter->current_field.field_array[schema.length-1].type);
                        switch(updated_list_iter->current_field.field_array[schema.length-1].type){
                          case VAL_STRING:
                          strcat(record_string,updated_list_iter->current_field.field_array[schema.length-1].value.string);
                          strcat(record_string,FILE_DELIM);
                          printf("PUTTING %s in RECORD_STRING, new STRING IS %s",updated_list_iter->current_field.field_array[schema.length-1].value.string,record_string);
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
                        printf("PUTTING %s\n",record_string);
                        updated_list_iter = updated_list_iter->next_record;
                      }
                      printf("WE UPDATED\n");
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
                  $$ = $3;
                  push_back_string(*$1,&$$);
                }
                | 
                FIELD {
                  struct String_List* temp = (struct String_List*)malloc(sizeof(struct String_List));
                  
                  push_back_string(*$1,&temp);
                  $$ = temp;
                }
                ;

    FIELD:     IDENTIFIER {
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
              printf("Inside AND\n");
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
              while(iter != NULL){
                if( !find(*iter,$$)){
                  push_back(iter->current_field,&$$);
                }
                iter = iter->next_record;
              }
            }
            printf("output after condition\n\n");
            print_list($$);
          }
          |
          CONDITION                                                            { $$ = $1; }
          ;

    LOGICAL_OPERATOR: AND                                                      {  printf("GAND\n");
                                                                                    $$ = 1; 
                                                                               }
                      |                                                       
                      OR                                                       { printf("GORI\n");
                                                                                  $$ = 0; 
                                                                                }
          ;

    /* this may fuxk titself   */
    CONDITION : NUMERICAL_CONDITION                                             { $$ = $1; }                                                                                 
                | 
                STRING_CONDITION                                                { $$ = $1; }
                | 
                NOT CONDITION  { 
                  $$ = NULL;
                  struct Record * iter = table_records;
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
            puts("entered NUMERICAL_CONDITION");
            struct Record* iter = table_records;
            print_list(table_records);
            int pos_of_field = 0;
            for(int i = 0; i < schema.length; i++){
              printf("schema field name %s \n",$1);
              if(strcmp($1,schema.schema_definition[i].name.field_name) == 0){
                pos_of_field = i; 
                break;
              }
            } 
            printf("table record pointer: %p, first record %d\n",iter,iter->current_field.field_array[pos_of_field].value.integer);
            printf("comparing %d\n",$3.value.integer);
            while(iter != NULL){
              printf("values in iter %d\n",iter->current_field.field_array[pos_of_field].value.integer);

              struct Record* temp  = (struct Record*)malloc(sizeof(struct Record));
              temp->current_field = iter->current_field;
              
              if( strcmp($2.opertr,"==") == 0){
                puts("eq");
                printf("$3 value integer is %d\n",$3.value.integer);
                if( $3.value.integer == iter->current_field.field_array[pos_of_field].value.integer){
                  printf("EQ condition matched\n");
                  push_back(temp->current_field,&$$);
                  print_list($$);
                }
              }
              if( strcmp($2.opertr,"!=") == 0){
                puts("neq");
                if( $3.value.integer != iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);
                }
              }
              if( strcmp($2.opertr,">") == 0){
                puts("gt");
                if( $3.value.integer < iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);  
                }
              }
              if( strcmp($2.opertr,"<") == 0){
                puts("lt");
                if( $3.value.integer > iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);
                }
              }
              if( strcmp($2.opertr,">=") == 0){
                puts("geq");
                if( $3.value.integer <= iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);
                }
              }
              if( strcmp($2.opertr,"<=") == 0){
                puts("leq");
                if( $3.value.integer >= iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);
                }
              }    
              iter = iter->next_record;
            }
            printf("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD\n");
            print_list($$);
            printf("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD\n");
          }
          ;

    STRING_CONDITION: STRING_FIELD STRING_RELATIONAL_OPERATOR STRING_OPERAND  {
            $$ = NULL;
            struct Record* iter = table_records;
            printf("INSIDE STRING COND\n");
            int pos_of_field = 0;
            for(int i = 0; i < schema.length; i++){
              if(strcmp($1,schema.schema_definition[i].name.field_name) == 0){
                pos_of_field = i;
                printf("%d is POS OF FIELD\n",pos_of_field); 
                break;
              }
            }

            printf("ITER IS %p\n",iter); 
            printf("OP IS %s\n",$2.opertr);
            printf("COMPARinG with %s %d\n",$3.value.string,strlen($3.value.string));
            while(iter != NULL){
              if( strcmp($2.opertr,"=") == 0){
                char temp[STRING_LENGTH];
                strcpy(temp,$3.value.string);
                // strcat(temp,"\n");
                printf("Length of the iter string %d\n",strlen(iter->current_field.field_array[pos_of_field].value.string));
                printf("NOW COMPARING %s %d with temp %d\n",iter->current_field.field_array[pos_of_field].value.string,strcmp($3.value.string,iter->current_field.field_array[pos_of_field].value.string),strcmp(temp,iter->current_field.field_array[pos_of_field].value.string));
                if(strcmp($3.value.string,iter->current_field.field_array[pos_of_field].value.string) == 0){
                  struct Record* temp  = (struct Record*)malloc(sizeof(struct Record));
                  temp->current_field = iter->current_field;
                  push_back(temp->current_field,&$$);
                }
              }    
              iter = iter->next_record;
            }
            printf("DAS STRING CONDITIONES OP IS \n");
            print_list($$);
            printf("I AINT GOT NO MONEY\n");   
          }
          ;

    STRING_OPERAND:   STRING_LITERAL {
            // $$ -> type = STRING_TYPE;
            strcpy($$.value.string , $1.value.string);
          } 
          ; 

    STRING_FIELD:     IDENTIFIER  {
            // $$.type = INT_TYPE;
            printf("THE STRING FIELD IS ");
            bool flag = false;
            for(int i = 0; i < schema.length; i++){
              if(strcmp($1,schema.schema_definition[i].name.field_name) == 0){
                  flag = true; 
                  break;
                }
              }
            
            if(flag == false){
            // terminating coz field not found
              printf("FIELD NOT FOUND, CHECK QUERY\n");
              YYABORT;
            }
            strcpy($$,$1);
            printf("%s\n",$$);
            printf("DDDDDDDDDDDDSSSSSSSSSSSSSSEEEEEEEEEEEEE\n");                                                            
          }
          ;

    STRING_RELATIONAL_OPERATOR: STRING_COMPARISON {
            $$.type = OPERTR;
            strcpy($$.opertr, "=");
            printf("RECEIVED OP %s",$$.opertr);
          }
          ;

    NUMERICAL_OPERAND:  INTEGER_LITERAL {
              $$.type = INT_TYPE;
              $$.value.integer = $1.value.integer;
            }
            ;

    NUMERICAL_FIELD:   IDENTIFIER {
            bool flag = false;
            for(int i = 0; i < schema.length; i++){
              if(strcmp($1,schema.schema_definition[i].name.field_name) == 0){
                  flag = true;
                  break;
                }
              }
            
            if(flag == false){
            // terminating coz field not found
              printf("FIELD NOT FOUND, CHECK QUERY\n");
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
                    printf("Need more fields in the definition? contact the developer\n");
                    YYABORT;// end as we cannot continue;
                  }
                  else{
                    $$ = $3;
                    $$ -> field_array[$$->length].type = $2.type;
                    switch($2.type){
                      case VAL_INT: $$->field_array[$$->length].value.integer = $2.value.integer; break;
                      case VAL_STRING: strcpy($$->field_array[$$->length].value.string, $2.value.string); break;
                      default: printf("This datatype has not been defined\n"); YYABORT;break;
                    }
                    $$->length = $$->length + 1;
                  }
                }
                ;

  DATA_LIST:  COMMA DATA_UNIT DATA_LIST {
                  if($3->length == ARRAY_SIZE){
                    printf("Need more fields in the definition? contact the developer\n");
                    YYABORT;// end as we cannot continue;
                  }
                  else{
                    $$ = $3;
                    $$ -> field_array[$$->length].type = $2.type;
                    switch($2.type){
                      case VAL_INT:$$ -> field_array[$$->length].value.integer = $2.value.integer; break;
                      case VAL_STRING: strcpy($$->field_array[$$->length].value.string, $2.value.string); break;
                      default: printf("This datatype has not been defined\n"); YYABORT;break;
                    }
                    $$->length = $$->length + 1;
                  }
                }
                |                       
                                        {
                /* empty */             $$ = (struct Field_List*)calloc(1,sizeof(struct Field_List));
                                        $$->length = 0;          
                                        }
                ;

  DATA_UNIT: STRING_LITERAL  {
                  $$.type = $1.type;
                  switch($$.type){
                    case VAL_INT : $$.value.integer = $1.value.integer; break;
                    case VAL_STRING: strcpy($$.value.string,$1.value.string); break;
                    default: printf("Illegal type stopping execution\n");YYABORT;
                  }//YYABORT stops execution of parser due to error
                }
                | 
                INTEGER_LITERAL  {
                  $$.type = $1.type;
                  switch($$.type){
                    case VAL_INT : $$.value.integer = $1.value.integer; break;
                    case VAL_STRING: strcpy($$.value.string,$1.value.string); break;
                    default: printf("Illegal type stopping execution\n");YYABORT;
                  }//YYABORT stops execution of parser due to error
                }
               ;

    FILE_NAME: IDENTIFIER   {
                  // TODO test.c and return qualified file path 
                  // strcpy($$,/*Address to the folder to which it is to be written*/);
                  // obtain the path to schema and get the data in the schema
        
                  // Refresh the buffer for each time a query is called
                  table_records = NULL;
                  memset(&schema,0,sizeof(schema));

                  char path_to_schema[STRING_LENGTH];
                  strcpy($$,$1);

                  strcpy(path_to_schema,MASTER_TABLE);
                  strcat(path_to_schema,"/");
                  strcat(path_to_schema,$$);
                  printf("path to schema is %s\n",path_to_schema);
                  FILE* schema_file_handle = fopen(path_to_schema,"r+");
                  
                  if(schema_file_handle==NULL){
                    handle_query_file_error();
                  }
                  printf("Table Schema found!\n");
                  // schema_list = (struct Field_List*)calloc(1,sizeof(struct Field_List));
                  // schema_list -> length = 0;

                  // obtain the path to the table and get the data in the table
                  char path_to_table[STRING_LENGTH];
                  // strcpy($$,$1);

                  strcpy(path_to_table,DATA_PATH);
                  strcat(path_to_table,"/");
                  strcat(path_to_table,$$);

                  DIR* table_file_handle = opendir(path_to_table);
                  if(table_file_handle==NULL){
                    handleError(0);
                  }
                  printf("The table is found\n");
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
                      strip(line);
                      char* token1 = strtok(line,SCHEMA_DELIM);
                      strcpy(schema.schema_definition[index].name.field_name,token1);
                      token1 = strtok(NULL,SCHEMA_DELIM);
                      if(strcmp(token1,STRING) == 0){
                          schema.schema_definition[index++].type = VAL_STRING;
                      }
                      else if(strcmp(token1,INT) == 0){
                          schema.schema_definition[index++].type = VAL_INT;
                      }
                      // strcpy(schema.schema_definition[index++].type,token1);
                  }
                  fclose(schema_file_handle);
                  //for debug, print the schema obtained
                  printf("Number of  Attributes: %d\n",number_of_attributes);
                  for(int i=0;i<number_of_attributes;i++){
                      printf("%s\n",schema.schema_definition[i].name.field_name);
                  }
                  printf("dummy\n");
                  //go through the 'records'/txt files inside the data folder and fill the linked list of records
                  while((file=readdir(table_file_handle))!=NULL){
                    if(file->d_type != DT_REG){// If it is not a regular file
                      continue;
                    }
                    else{
                        struct Field_List record;
                        char filenames[1000];
                        sprintf(filenames,"%s/%s",path_to_table,file->d_name);
                        FILE* ffile = fopen(filenames,"r");
                        read = getline(&line,&len,ffile);
                        strip(line);
                        if(read == -1){
                          // printf("Line not found\n");
                          handle_query_file_error();
                        }
                        index = 0;
                        printf("%s\n",line);
                        
                        char templine[STRING_LENGTH];
                        strcpy(templine,line);
                        char* token = strtok(line,FILE_DELIM);
                        while(token != NULL){
                          index++;
                          token = strtok(NULL,FILE_DELIM);
                        }
                        record.length = index;
                        index = 0;
                        token = strtok(templine,FILE_DELIM);
                        while(token != NULL){
                            // struct Field field;
                            record.field_array[index].type = schema.schema_definition[index].type;
                            if(record.field_array[index].type == VAL_INT){
                                record.field_array[index].value.integer = atoi(token);
                            }
                            else{
                                strcpy(record.field_array[index].value.string,token);
                            }
                            // record.field_array[index++] = field;
                            index++;
                            token = strtok(NULL,FILE_DELIM);
                        }
                        push_back(record,&table_records);
                        
                    }
                  }
                  print_list(table_records);
                  strcpy($$,path_to_table);
                  puts("THE PATH TO THE TABLE IS");
                  puts($$);
                }
                ;
%%

void handle_query_file_error(){

  switch(errno){
    case EINVAL: printf("The mode provided for opening the file is incorrect\n");break;
    case ENOMEM: printf("Out of memory as the memory has hit the memory limit set internally\n");break;
    case EACCES: printf("Access to the current file is not allowed.Check the permissions set for the file\n");break;
    case EFAULT: printf("The path name is outside your accessible address space\n");break;
    case ENOENT: printf("This file does not exist\n");break;
    // case EBADNAME: printf("The file name specified is not valied\n");break;
    // case EIOERROR: printf("A non recoverable IO error occured\n");break;
    // case EIORECERR: printf("A recoverable IO error occured\n");break;
  }
  exit(EXIT_FAILURE);
}
int yyerror(const char* msg){
  fprintf(stderr," %s\n",msg);
    return 0;
}



void handleError(int isMaster){

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
    DIR* masterDirectory = opendir(MASTER_TABLE);
    if(masterDirectory){
        printf("The master diretory is initialized.\n");
    }
    else{
        handleError(ENOENT);
    }
    return 0;
}

int main(int argc, char* argv[]){
    initFunction(argv[0]);
    while(yyparse()==0){
     // This will make it run till we get an error
    }
  return 0;
}

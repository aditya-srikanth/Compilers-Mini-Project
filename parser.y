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
    struct String_List* string_list_ptr = NULL;
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
%type <string> FIELD 
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
  QUERY :   GET_QRY    { printf("Get query\n");}
        |
        INSERT_QRY  { printf("Insert query\n");}
        |
        UPDATE_QRY  { printf("Update query\n");}
        |
        DELETE_QRY  { printf("Delete query\n");}
        ;

    GET_QRY:   GET FIELD_LIST FROM FILE_NAME WHERE CONDITION_LIST   {
                                                                      //TODO
                                                                      //Verfify field list
                                                                      //print according to field list
          }
        ;

    INSERT_QRY:  INSERT RECORD TUPLE INTO FILE_NAME                   {
                                                                        //TODO 
                                                                        //open file handle
                                                                        //write to file
                }
                ;

    UPDATE_QRY: UPDATE RECORD IN FILE_NAME SET FIELD_LIST TO TUPLE WHERE CONDITION_LIST     {
                                                                                              //TODO
                                                                                              //Open file handle
                                                                                              //Update those that appear in condition list
                }
                ;

    DELETE_QRY: DELETE RECORD FROM FILE_NAME WHERE CONDITION_LIST  {
                  // $$ = NULL;
                  struct Record* iter = $6;
                  DIR* dir_handle = opendir($4);
                  struct dirent* dir_entry;
                  int Hack = 2;
                  while((dir_entry=readdir(dir_handle))!=NULL){
                    printf("the dir handle is %p\n",dir_handle);
                    while(iter!=NULL){
                      printf("the dir handle is %p\n",iter);
                      printf("the type is %d, STRING %d INT %d\n ",iter->current_field.field_array[0].type,iter->current_field.field_array[0].type == VAL_STRING,iter->current_field.field_array[0].type == VAL_INT );
                      switch(iter->current_field.field_array[0].type){
                        case VAL_STRING: if(strcmp(iter->current_field.field_array[0].value.string,dir_entry->d_name)==0){
                                          char path[STRING_LENGTH];
                                          sprintf(path,"%s/%s.txt",$4,dir_entry->d_name);
                                          puts("path to deletion");
                                          puts(path);
                                          remove(path);
                                        }
                                        break;
                        case VAL_INT:   Hack = 3;
                                        char string_format[STRING_LENGTH];
                                        sprintf(string_format,"%d.txt",iter->current_field.field_array[0].value.integer);
                                        if(strcmp(string_format,dir_entry->d_name)==0){
                                          char path[STRING_LENGTH];
                                          sprintf(path,"%s/%s",$4,dir_entry->d_name);
                                          puts("path to deletion");
                                          puts(path);
                                          remove(path);
                                        }
                                        break;
                      }
                    }
                  }
                }
                ;

    FIELD_LIST: LEFT_PARANTHESES FIELDS RIGHT_PARANTHESES {
                  $$ = $2 ;
                }
                ;

    FIELDS:     FIELD COMMA FIELDS { 
                  struct String_List* temp = malloc(sizeof(struct String));
                  strcpy(temp->data.string,$1);
                  temp->data.string_length = strlen($1); 
                  $3->length += 1;
                  $$ ->next_str = temp;
                  //TODO ADD API FOR STRING LIST  
                }
                | 
                FIELD { 
                  struct String_List* temp = malloc(sizeof(struct String));
                  strcpy(temp->data.string,$1);
                  temp->data.string_length = strlen($1); 
                  temp->length = 1;
                  $$ = temp;
                }
                ;

    FIELD:     IDENTIFIER                                                     { strcpy($$,$1); }
                ;

    CONDITION_LIST: CONDITION_LIST LOGICAL_OPERATOR CONDITION { 
                                                                $$ = NULL;
                                                                struct Record * iter = $1;
                                                                if($2 == 1)
                                                                { 
                                                                  while(iter != NULL){
                                                                    if( find(*iter,$3)){
                                                                      push_back(iter->current_field,&$$);
                                                                    }
                                                                    else{
                                                                      continue;
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
                                                              }
          |
          CONDITION                                                            { $$ = $1; }
          ;

    LOGICAL_OPERATOR: AND                                                      { $$ = 1; }
                      | 
                      OR                                                       { $$ = 0; }
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
                    if( find(*iter,$2) ){
                      continue;
                    }
                    else{
                      push_back(iter->current_field,&$$);
                    }
                  }
                  iter = iter->next_record;
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
              if( strcmp($2.opertr,"==") == 0){
                puts("eq");
                if( $3.value.integer == iter->current_field.field_array[pos_of_field].value.integer){
                  push_back(temp->current_field,&$$);
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
          }
          ;

    STRING_CONDITION: STRING_FIELD STRING_RELATIONAL_OPERATOR STRING_OPERAND  {
            $$ = NULL;
            struct Record* iter = table_records;
            int pos_of_field = 0;
            for(int i = 0; i < schema.length; i++){
              if(strcpy($1,schema.schema_definition[i].name.field_name) == 0){
                pos_of_field = i; 
                break;
              }
            } 
            while(iter != NULL){
              if( strcmp($2.string,"=") == 0){
                if(strcmp($3.value.string,iter->current_field.field_array[pos_of_field].value.string) == 0){
                  struct Record* temp  = (struct Record*)malloc(sizeof(struct Record));
                  push_back(temp->current_field,&$$);
                }
                iter = iter->next_record;
              }    
            }   
          }
          ;

    STRING_OPERAND:   STRING_LITERAL {
            // $$ -> type = STRING_TYPE;
            strcpy($$.value.string , $1.value.string);
          } 
          ; 

    STRING_FIELD:     IDENTIFIER  {
            // $$.type = INT_TYPE;
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
                      char* token1 = strtok(line,SCHEMA_DELIM);
                      strcpy(schema.schema_definition[index].name.field_name,token1);
                      token1 = strtok(NULL,SCHEMA_DELIM);
                      if(strcmp(token1,STRING)){
                          schema.schema_definition[index++].type = VAL_STRING;
                      }
                      else{
                          schema.schema_definition[index++].type = VAL_INT;
                      }
                      // strcpy(schema.schema_definition[index++].type,token1);
                  }
                  
                  //for debug, print the schema obtained
                  printf("Number of  Attributes: %d\n",number_of_attributes);
                  for(int i=0;i<number_of_attributes;i++){
                      printf("%s\t",schema.schema_definition[i].name.field_name);
                  }
                  printf("\n");
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
                        if(read == -1){
                            printf("Line not found\n");
                        }
                        index = 0;
                        char* token = strtok(line,FILE_DELIM);
                        while(token != NULL){
                            struct Field field;
                            field.type = schema.schema_definition[index].type;
                            if(field.type == VAL_INT){
                                field.value.integer = atoi(token);
                            }
                            else{
                                strcpy(field.value.string,token);
                            }
                            record.field_array[index++] = field;
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
                                mkdir(MASTER_TABLE,DEFFILEMODE); // master files
                                mkdir(DATA_PATH,DEFFILEMODE); // all the other database folders
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

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
    #include "headers.h"
    #include "datatypes.h"
    #include "defaults.h"

    struct Schema schema;
    struct Record* table_records = NULL;
    int yylex();
    extern int yyerror(const char* msg);
    int initFunction();
    void handleError();
    void handle_query_file_error();
    void getQuery(fields_list,conditions_list);
    void insertQuery(tuple);
    void deleteQuery(conditions_list);
    void updateQuery(fields_list,tuple,conditions_list);
%}
%union{
    char string[STRING_LENGTH];
    int integer;
    struct Field field;
    struct Field_List* field_list_ptr;
    struct Condition_Operator_Type;
    struct Record* record_ptr;
    struct String_List* string_list_ptr;
    bool boolean;
};
%token GET FROM WHERE INSERT RECORD INTO UPDATE IN SET TO DELETE STMTTERM COMMA LEFT_PARANTHESES RIGHT_PARANTHESES STRING INTEGER IDENTIFIER
%token NOT
%token AND OR
%token LESS_THAN LESS_THAN_EQUAL GREATER_THAN GREATER_THAN_EQUAL EQUAL NOT_EQUAL STRING_COMPARISON
%token <string> STRING
%token <integer> INTEGER


%type <string_list_ptr> FIELD_LIST
%type <string_list_ptr> FIELDS 
%type <string> FIELD 
%type <record_ptr> CONDITION_LIST
%type <record_ptr> CONDITION
%type <record_ptr> NUMERICAL_CONDITION
%type <record_ptr> STRING_CONDITION
%type <string> NUMERICAL_FIELD
%type <string> STRING_FIELD
%type <string> FILE_NAME
%type <field> DATA_UNIT
%type <field_list_ptr> DATA_LIST;
%type 
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

    DELETE_QRY: DELETE RECORD FROM FILE_NAME WHERE CONDITION_LIST             {
                                                                                $$ = NULL;
                                                                                Record* iter = $6;
                                                                                DIR* dir_handle = diropen($4);
                                                                                struct dirent* dir_entry;
                                                                                while(dir_entry=diropen(dir_handle)!=NULL){
                                                                                  while(iter!=NULL){
                                                                                    switch(iter->current_field.field_array[0].type){
                                                                                      case VAL_STRING: if(strcmp(iter->current_field.field_array[0].string,dir_entry->d_name)==0){
                                                                                                        char path[STRING_LENGTH];
                                                                                                        sprintf(path,"%s/%s.txt",$4,dir_entry->d_name);
                                                                                                        remove(path);
                                                                                                      }
                                                                                                      break;
                                                                                      case VAL_INT:   char string_format[STRING_LENGTH];
                                                                                                      sprintf(string_format,"%d.txt",iter->current_field.field_array[0].integer);
                                                                                                      if(strcmp(string_format,dir_entry->d_name)==0){
                                                                                                        char path[STRING_LENGTH];
                                                                                                        sprintf(path,"%s/%s",$4,dir_entry->d_name);
                                                                                                        remove(path);
                                                                                                      }
                                                                                                      break;
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                ;

    FIELD_LIST: LEFT_PARANTHESES FIELDS RIGHT_PARANTHESES                     {
                                                                                $$ = $1 ;
                                                                              }
                ;

    FIELDS:     FIELD COMMA FIELDS                                            { 
                                                                                struct String_List* temp = malloc(sizeof(struct String));
                                                                                strcpy(temp->data.string,$1);
                                                                                temp->data.string = strlen($1); 
                                                                                $3->length += 1;
                                                                                $$ >next_str = temp;  
                                                                              }
                | 
                FIELD                                                         { 
                                                                                struct String_List* temp = malloc(sizeof(struct String));
                                                                                strcpy(temp->data.string,$1);
                                                                                temp->data.string = strlen($1); 
                                                                                temp->length = 1;
                                                                                $$ = temp;
                                                                              }
                ;

    FIELD:     IDENTIFIER                                                     { strcpy($$,$1); }
                ;

    CONDITION_LIST: CONDITION_LIST LOGICAL_OPERATOR CONDITION                  { 
                                                                                  $$ = NULL;
                                                                                  Record * iter = $1;
                                                                                  if($1 == 1)
                                                                                  { 
                                                                                    while(iter != NULL){
                                                                                      if( find(*iter,$2)){
                                                                                        push_back(iter->field_array,&$$);
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
                                                                                        push_back(iter->field_array,&$$);
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
                NOT CONDITION                                                   { 
                                                                                  $$ = NULL;
                                                                                  Record * iter = table_records;
                                                                                  while(iter != NULL){
                                                                                    if( find(iter,$2) ){
                                                                                      continue;
                                                                                    }
                                                                                    else{
                                                                                      push_back(iter->field_array,&$$);
                                                                                    }
                                                                                  }
                                                                                  iter = iter->next_record;
                                                                                }
                | 
                LEFT_PARANTHESES CONDITION_LIST RIGHT_PARANTHESES               {
                                                                                  $$ = $2;
                                                                                }
          ;

    NUMERICAL_CONDITION: NUMERICAL_FIELD RELATIONAL_OPERATOR NUMERICAL_OPERAND  {
                                                                                  $$= NULL;
                                                                                  Record* iter = table_records;
                                                                                  int pos_of_field = 0;
                                                                                  for(int i = 0; i < schema.length; i++){
                                                                                    if(strcpy($1,schema.schema_definition[i].name.field_name) == 0){
                                                                                      pos_of_field = i; 
                                                                                      break;
                                                                                    }
                                                                                  } 
                                                                                  while(iter != NULL){
                                                                                    Record* temp  = (Record*)malloc(sizeof(Record));
                                                                                    if( strcmp($2,"==") == 0){
                                                                                      if( $3 == iter->current_field.field_array[pos_of_field].value.integer){
                                                                                        push_back(temp->field_array,&$$);
                                                                                      }
                                                                                    }
                                                                                    if( strcmp($2,"!=") == 0){
                                                                                      if( $3 != iter->current_field.field_array[pos_of_field].value.integer){
                                                                                        push_back(temp->field_array,&$$);
                                                                                      }
                                                                                    }
                                                                                    if( strcmp($2,">") == 0){
                                                                                      if( $3 < iter->current_field.field_array[pos_of_field].value.integer){
                                                                                        push_back(temp->field_array,&$$);  
                                                                                      }
                                                                                    }
                                                                                    if( strcmp($2,"<") == 0){
                                                                                      if( $3 > iter->current_field.field_array[pos_of_field].value.integer){
                                                                                        push_back(temp->field_array,&$$);
                                                                                      }
                                                                                    }
                                                                                    if( strcmp($2,">=") == 0){
                                                                                      if( $3 <= iter->current_field.field_array[pos_of_field].value.integer){
                                                                                        push_back(temp->field_array,&$$);
                                                                                      }
                                                                                    }
                                                                                    if( strcmp($2,"<=") == 0){
                                                                                      if( $3 >= iter->current_field.field_array[pos_of_field].value.integer){
                                                                                        push_back(temp->field_array,&$$);
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
                                                                                  if( strcmp($2,"=") == 0){
                                                                                    if(strcmp($3,iter->current_field.field_array[pos_of_field].value.string) == 0){
                                                                                      struct Record* temp  = (struct Record*)malloc(sizeof(struct Record));
                                                                                      push_back(temp->field_array,&$$);
                                                                                    }
                                                                                    iter = iter->next_record;
                                                                                  }    
                                                                                }   
                                                                              }
          ;

    STRING_OPERAND:   STRING                              {
                                                            $$ -> data.type = STRING_TYPE;
                                                            strcpy($$.value.string , $1);
                                                          } 
          ; 

    STRING_FIELD:     IDENTIFIER                          {
                                                            $$.data.type = INT_TYPE;
                                                            bool flag = false;
                                                            for(int i = 0; i < schema.length; i++){
                                                              if(strcmpi($1,schema.schema_definition[i].name.field_name) == 0){
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

    STRING_RELATIONAL_OPERATOR: STRING_COMPARISON       {
                                                          $$ -> data.type = OPERTR;
                                                          strcpy($$ -> data.opertr, "=");
                                                        }
          ;

    NUMERICAL_OPERAND:  INTEGER                         {
                                                          $$.data.type = INT_TYPE;
                                                          $$.value.integer = $1;
                                                        }
            ;

    NUMERICAL_FIELD:   IDENTIFIER                      {
                                                          bool flag = false;
                                                          for(int i = 0; i < schema.length; i++){
                                                            if(strcmpi($1,schema.schema_definition[i].name.field_name) == 0){
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

    RELATIONAL_OPERATOR: LESS_THAN                      {
                                                         $$.data.type = OPERTR;
                                                          strcpy($$.data.opertr, "<");
                                                        } 
                        | 
                        LESS_THAN_EQUAL                  {
                                                         $$.data.type = OPERTR;
                                                          strcpy($$.data.opertr, "<=");
                                                        } 
                        | 
                        GREATER_THAN                    {
                                                          $$.data.type = OPERTR;
                                                          strcpy($$.data.opertr, ">");
                                                        } 
                        | 
                        GREATER_THAN_EQUAL              {
                                                         $$.data.type = OPERTR;
                                                          strcpy($$.data.opertr, ">");
                                                        } 
                        | 
                        EQUAL                           {
                                                          $$.data.type = OPERTR;
                                                          strcpy($$.data.opertr, "==");
                                                        }
                                                        
                        | 
                        NOT_EQUAL                       {
                                                          $$.data.type = OPERTR;
                                                          strcpy($$.data.opertr, "!=");
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
                                                                            case VAL_INT: field_array[$$->length].value = $2.value; break;
                                                                            case VAL_STRING: strcpy(field_array[$$->length].value, $2.value); break;
                                                                            default: printf("This datatype has not been defined\n"); YYABORT;break;
                                                                          }
                                                                          $$ -> length = $$->length + 1;
                                                                        }
                                                                      }
                ;

  DATA_LIST:  COMMA DATA_UNIT DATA_LIST {
                                          if($2->length == ARRAY_SIZE){
                                            printf("Need more fields in the definition? contact the developer\n");
                                            YYABORT;// end as we cannot continue;
                                          }
                                          else{
                                            $$ = $2;
                                            $$ -> field_array[$$->length].type = $1.type;
                                            switch($1.type){
                                              case VAL_INT:$$ -> field_array[$$->length].value = $1.value; break;
                                              case VAL_STRING: strcpy(field_array[$$->length].value, $1.value); break;
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

  DATA_UNIT: STRING             {
                                  $$.type = $1.type;
                                  switch($$.type){
                                    case VAL_INT : $$.value.integer = $1. value; break;
                                    case VAL_STRING: strcpy($$.value.string,$1.value); break;
                                    default: printf("Illegal type stopping execution\n");YYABORT;
                                  }//YYABORT stops execution of parser due to error
                                }
                | 
                INTEGER         {
                                  $$.type = $1.type;
                                  switch($$.type){
                                    case VAL_INT : $$.value.integer = $1. value; break;
                                    case VAL_STRING: strcpy($$.value.string,$1.value); break;
                                    default: printf("Illegal type stopping execution\n");YYABORT;
                                  }//YYABORT stops execution of parser due to error
                                }
               ;

    FILE_NAME: IDENTIFIER   {
                              // TODO test.c and return qualified file path 
                              strcpy($$,/*Address to the folder to which it is to be written*/)
                              // obtain the path to schema and get the data in the schema
                              char path_to_schema[STRING_LENGTH];
                              strcpy($$,$1);

                              strcpy(path_to_schema,MASTER_TABLE);
                              strcpy(path_to_schema,"/");
                              strcpy(path_to_schema,$$);
                              FILE* schema_file_handle = fopen(path_to_schema,"r+");
                              
                              if(schema_file_handle==NULL){
                                handle_query_file_error();
                              }
                              printf("Table Schema found!\n");
                              schema_list = (Field_List*)calloc(1,sizeof(Field_List));
                              schema_list -> length = 0;

                              // obtain the path to the table and get the data in the table
                              char path_to_table[STRING_LENGTH];
                              strcpy($$,$1);

                              strcpy(path_to_table,DATA_PATH);
                              strcpy(path_to_table,"/");
                              strcpy(path_to_table,$$);
                              DIR* table_file_handle = opendir(path_to_table);
                              
                              if(table_file_handle==NULL){
                                handleError(0);
                              }
                              printf("The table is found\n");
                              FILE* file = NULL;

                              while((file=readdir(table_file_handle))!=NULL){
                                if(file->d_type != DT_REG){// If it is not a regular file
                                  continue;
                                }
                                else{
                                    
                                }
                              }
                            }
                ;
%%

void handle_query_file_error(){

  switch(errno){
    EINVAL: printf("The mode provided for opening the file is incorrect\n");break;
    ENOMEM: printf("Out of memory as the memory has hit the memory limit set internally\n");break;
    EACCES: printf("Access to the current file is not allowed.Check the permissions set for the file\n");break;
    EFAULT: printf("The path name is outside your accessible address space\n");break;
    ENOENT: printf("This file does not exist\n");break;
    EBADNAME: printf("The file name specified is not valied\n");break;
    EIOERROR: printf("A non recoverable IO error occured\n");break;
    EIORECERR: printf("A recoverable IO error occured\n");break;
  }
  exit(EXIT_FAILURE);
}
int yyerror(const char* msg){
  fprintf(stderr," %s\n",msg);
    return 0;
}



void handleError(int isMaster){

    switch(errorno){
    case EACCES: perror("Permission denied.\n");exit(EXIT_FAILURE);break;

       case EBADF:  perror("fd is not a valid file descriptor opened for reading.\n");exit(EXIT_FAILURE);break;

       case EMFILE: perror("The per-process limit on the number of open file descriptors has been reached.\n");exit(EXIT_FAILURE);break;


       case ENFILE: perror("The system-wide limit on the total number of open files has been reached.\n");exit(EXIT_FAILURE);break;



        case ENOENT:    printf("Directory does not exist, or name is an empty string.\n");
                        if(isMaster==1){
                            char c;
                            printf("Do you want to create a new master Directory(y/n)\n");
                            scanf("%c",c);
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

void getQuery(fields_list,conditions_list){
    //check if the fields_list matches the table schema
    //open all files
    //check conditiones
    //printout
}

void insertQuery(tuple){
    //check if the tuple matches the table schema
    //do a file create with the necessary tuple
}

void deleteQuery(conditions_list){
    //open all files
    //check conditiones
    //deleted if necessary
}

void updateQuery(fields_list,tuple,conditions_list){
    //check if the fields_list matches the table schema
    //check if the tuple matches the schema and is in accordance to the fields_list
    //open all files
    //check the conditiones
    //update if necessary
}


int initFunction(char *tableName){
    DIR* masterDirectory = opendir(MASTER_TABLE);
    if(masterDirectory){
        printf("The master diretory is initialized.\n")
    else{
         handleError();
    }
}

int main(int argc, char* argv[]){
    initFunction();
    while(yyparse()==0){
     // This will make it run till we get an error
    }
  return 0;
}

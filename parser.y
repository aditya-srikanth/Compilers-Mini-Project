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

    struct Field_List* schema_list = NULL;
    int yylex();
    extern int yyerror(const char* msg);
    int initFunction();
    void handleError();
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
    bool boolean;
};
%token GET FROM WHERE INSERT RECORD INTO UPDATE IN SET TO DELETE STMTTERM COMMA LEFT_PARANTHESES RIGHT_PARANTHESES STRING INTEGER IDENTIFIER
%token NOT
%token AND OR
%token LESS_THAN LESS_THAN_EQUAL GREATER_THAN GREATER_THAN_EQUAL EQUAL NOT_EQUAL STRING_COMPARISON
%token <string> STRING
%token <integer> INTEGER

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

    GET_QRY:   GET FIELD_LIST FROM FILE_NAME WHERE CONDITION_LIST
        ;

    INSERT_QRY:  INSERT RECORD TUPLE INTO FILE_NAME
                ;

    UPDATE_QRY: UPDATE RECORD IN FILE_NAME SET FIELD_LIST TO TUPLE WHERE CONDITION_LIST
                ;

    DELETE_QRY: DELETE RECORD FROM FILE_NAME WHERE CONDITION_LIST
                ;

    FIELD_LIST: LEFT_PARANTHESES FIELDS RIGHT_PARANTHESES
                ;

    FIELDS:     FIELD COMMA FIELDS | FIELD
                ;

    FIELD:     IDENTIFIER
                ;

    CONDITION_LIST: CONDITION_LIST LOGICAL_OPERATOR CONDITION
          |
          CONDITION
          ;

    LOGICAL_OPERATOR: AND | OR
          ;

    CONDITION : NUMERICAL_CONDITION                                               {
                                                                                  
                                                                                  }
                | 
                STRING_CONDITION 
                | 
                NOT CONDITION 
                | 
                LEFT_PARANTHESES CONDITION_LIST RIGHT_PARANTHESES
          ;

    NUMERICAL_CONDITION: NUMERICAL_OPERAND RELATIONAL_OPERATOR NUMERICAL_OPERAND  {
                                                                                      $$ = (struct Node*)calloc(1,struct Node); 
                                                                                      $2 -> left = $1;
                                                                                      $2 -> right = $3;                                                                                      
                                                                                      if($2->type == OPERTR){
                                                                                        if($1.type == $3.type){
                                                                                          if(strcmp($2->oprtr,"<")){
                                                                                            $$ -> bool_val = $1->data.integer < $1->data.integer ;
                                                                                          }
                                                                                          else if(strcmp($2.oprtr,"<=")){
                                                                                            $$ -> bool_val = $1->data.integer <= $1->data.integer ;
                                                                                          }
                                                                                          else if(strcmp($2.oprtr,">")){
                                                                                            $$ -> bool_val = $1->data.integer > $1->data.integer ;
                                                                                          }
                                                                                          else if(strcmp($2.oprtr,">=")){
                                                                                            $$ -> bool_val = $1->data.integer >= $1->data.integer ;
                                                                                          }
                                                                                          else if(strcmp($2.oprtr,"==")){
                                                                                            $$ -> bool_val = $1->data.integer == $1->data.integer ;
                                                                                          }
                                                                                          else if(strcmp($2.oprtr,"!=")){
                                                                                            $$ -> bool_val = $1->data.integer != $1->data.integer ;
                                                                                          }                                                                                                                                                                     }
                                                                                      }
                                                                                      else{
                                                                                        printf("this operator is NOT defined\n");
                                                                                        YYABORT;
                                                                                      }
                                                                                  }
          ;

    STRING_CONDITION: STRING_OPERAND STRING_RELATIONAL_OPERATOR STRING_OPERAND  {
                                                                                  $$ = (struct Node*)calloc(1,struct Node); 
                                                                                  $2 -> left = $1;
                                                                                  $2 -> right = $3;
                                                                                  // ToDO fill $$
                                                                                  if($2->type == OPERTR){
                                                                                    if(strcmp($2->data.oprtr,"=")){
                                                                                      $$ -> bool_val = strcmp($1->data.string,$3->data.string);
                                                                                    }
                                                                                  }
                                                                                  else{
                                                                                    printf("this operator is NOT defined\n");
                                                                                    YYABORT;
                                                                                  }
                                                                                }
          ;

    STRING_OPERAND:   STRING                              {
                                                            $$ = (struct Node*)calloc(1,struct Node);                                                    
                                                            $$ -> data.type = STRING_TYPE;
                                                            strcpy($$ -> string , $1 );
                                                          } 
                      | 
                      IDENTIFIER                          {
                                                            $$ = (struct Node*)calloc(1,struct Node);
                                                            $$ -> data.type = STRING_TYPE;
                                                            schema_file_handle
                                                            // strcpy($$ -> string , $1 ); // TODO handle identifiers
                                                          }
          ;

    STRING_RELATIONAL_OPERATOR: STRING_COMPARISON       {
                                                          $$ = (struct Node*)calloc(1,struct Node);
                                                          $$ -> data.type = OPERTR;
                                                          strcpy($$ -> data.opertr, "=");
                                                        }
          ;

    NUMERICAL_OPERAND:  INTEGER                         {
                                                          $$.data.type = INT_TYPE;
                                                          $$.integer = $1;
                                                        } 
                        | 
                        IDENTIFIER                      {
                                                          $$.data.type = INT_TYPE;
                                                          // $$ -> integer = $1; // TODO handle identifiers
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
                                                                          printf("Need more fields in the definition, contact the developer\n");
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
                                            printf("Need more fields in the definition, contact the developer\n");
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
                                    case VAL_INT : $$.value = $1. value; break;
                                    case VAL_STRING: strcpy($$.value,$1.value); break;
                                    default: printf("Illegal type stopping execution\n");YYABORT;
                                  }//YYABORT stops execution of parser due to error
                                }
                | 
                INTEGER         {
                                  $$.type = $1.type;
                                  switch($$.type){
                                    case VAL_INT : $$.value = $1. value; break;
                                    case VAL_STRING: strcpy($$.value,$1.value); break;
                                    default: printf("Illegal type stopping execution\n");YYABORT;
                                  }//YYABORT stops execution of parser due to error
                                }
               ;

    FILE_NAME: IDENTIFIER   {
                              char path_to_schema[STRING_LENGTH];
                              strcpy($$,$1);

                              strcpy(path_to_schema,MASTER_TABLE);
                              strcpy(path_to_schema,"/");
                              strcpy(path_to_schema,$$);
                              schema_file_handle = fopen($$,"r");
                              if(schema_file_handle != NULL){
                                printf("Table found!\n");
                                schema_list = (Field_List*)calloc(1,sizeof(Field_List));
                                schema_list -> length = 0;
                              }
                              else{
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
                            }
                ;
%%

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
                            break;
                        }


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

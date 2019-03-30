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

    #include "defaults.h"

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

    CONDITION : NUMERICAL_CONDITION | STRING_CONDITION | NOT CONDITION | LEFT_PARANTHESES CONDITION_LIST RIGHT_PARANTHESES
          ;

    NUMERICAL_CONDITION: NUMERICAL_OPERAND RELATIONAL_OPERATOR NUMERICAL_OPERAND
          ;

    STRING_CONDITION: STRING_OPERAND STRING_RELATIONAL_OPERATOR STRING_OPERAND
          ;

    STRING_OPERAND: STRING | IDENTIFIER
          ;

    STRING_RELATIONAL_OPERATOR: STRING_COMPARISON
          ;

    NUMERICAL_OPERAND:   INTEGER | IDENTIFIER
          ;

    RELATIONAL_OPERATOR: LESS_THAN | LESS_THAN_EQUAL | GREATER_THAN | GREATER_THAN_EQUAL | EQUAL | NOT_EQUAL
          ;

  TUPLE:      LEFT_PARANTHESES DATA_UNIT DATA_LIST RIGHT_PARANTHESES {
                                                                        if($3->length == ARRAY_SIZE){
                                                                          printf("Need more fields\n");
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
                                            printf("Need more fields\n");
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
                /* empty */             $$ = (*Field_List)calloc(1,sizeof(Field_List));
                                        $$->length = 0;          
                                        }
                ;

    DATA_UNIT: STRING | INTEGER {
                                  $$.type = $1.type;
                                  switch($$.type){
                                    case VAL_INT : $$.value = $1. value; break;
                                    case VAL_STRING: strcpy($$.value,$1.value); break;
                                    default: printf("Illegal type stopping execution\n");YYABORT;
                                  }//YYABORT stops execution of parser due to error
                                }
               ;

    FILE_NAME: IDENTIFIER   {
                              strcpy($$,$1); 
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

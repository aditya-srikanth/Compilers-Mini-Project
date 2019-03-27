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
    char* string;
    int integer;
    struct Field field;
    bool boolean;
};
%token GET FROM WHERE INSERT RECORD INTO UPDATE IN SET TO DELETE STMTTERM COMMA LEFT_PARANTHESES RIGHT_PARANTHESES STRING INTEGER IDENTIFIER
%token NOT
%token AND OR
%token LESS_THAN LESS_THAN_EQUAL GREATER_THAN GREATER_THAN_EQUAL EQUAL NOT_EQUAL STRING_COMPARISON
 
%type <field> DATA_UNIT
%type <string> FILE_NAME
%type <integer> NUMERICAL_OPERAND
%type <string> STRING_OPERAND
%type <bool> STRING_CONDITION
%type <bool> NUMERICAL_CONDITION
%type <bool> CONDITION
%type <bool> CONDITION_LIST

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

  TUPLE:      LEFT_PARANTHESES DATA_UNIT DATA_LIST RIGHT_PARANTHESES
                ;

  DATA_LIST:  COMMA DATA_UNIT DATA_LIST
                |
                ;

    DATA_UNIT: STRING | INTEGER 
               ;

    FILE_NAME: IDENTIFIER  
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
        printf("The master diretory is initialized.\n>>\n")
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

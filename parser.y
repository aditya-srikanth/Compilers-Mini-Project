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
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    #include <unistd.h>
    #include <dirent.h>
    #include <errno.h>
    #include <sys/types.h>
    #include <sys/stat.h>

    //Default values
    #define MASTER_TABLE "./master"
    #define DATA_PATH "./data"
    #define MAX_NAME_SIZE 100
    char* masterPath=MASTER_TABLE;
    char* dataPath=DATA_PATH;

    int yylex();
    extern int yyerror(const char* msg);
    int initFunction();
    void handleError();
    void getQuery(fields_list,conditions_list);
    void insertQuery(tuple);
    void deleteQuery(conditions_list);
    void updateQuery(fields_list,tuple,conditions_list);
    void databaseMaker();
%}
%token GET FROM WHERE INSERT RECORD INTO UPDATE IN SET TO DELETE STMTTERM COMMA LEFT_PARANTHESES RIGHT_PARANTHESES STRING INTEGER IDENTIFIER
%token NOT
%token AND OR
%token LESS_THAN LESS_THAN_EQUAL GREATER_THAN GREATER_THAN_EQUAL EQUAL NOT_EQUAL STRING_COMPARISON

%union{
  char* string;
    int integer;
};

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

void databaseMaker(){
    printf("Enter the number of tables you want\n");
    int n;
    scanf("%d",&n);
    for(int i=0;i<n;i++){
        printf("Enter the table name\n");
        char name[MAX_NAME_SIZE];
        memset(name,0,sizeof(name));
        scanf("%s",name);
        printf("Enter the number of coloumns in your table\n");
        int cols;
        scanf("%d",&cols);
        char attr[cols][MAX_NAME_SIZE];
        char dtype[cols][MAX_NAME_SIZE];
        memset(attr,0,sizeof(attr));
        for(int j=0;j<cols;j++){
            printf("Enter the coloumn name and the datatype(string/int) separated by space");
            char a[MAX_NAME_SIZE],b[MAX_NAME_SIZE];
            memset(a,0,sizeof(a));
            memset(b,0,sizeof(b));
            scanf("%s",a);
            scanf("%s",b);
            if(strcmp(b,"string") == 0 || strcmp(b,"int") == 0){
                strcat(attr[j],a);
                strcat(dtype[j],b);
                continue;
            }
            else{
                printf("incorrect data type provided, please try again\n");
                j--;

            }
        }
        int foldercreated = mkdir(name,DEFFILEMODE);
        if(foldercreated == 0){
            //somehow save the table schema files dtype and attr in the same master folder
            printf("Table created successfully");
        }
        else{
            handleError(/*Tanny fill something here*/);
        }
    }

}

void handleError(int isMaster){

    switch(errorno){
        case EACCES: perror("Permission denied.\n");break;exit(EXIT_FAILURE);

       case EBADF:  perror("fd is not a valid file descriptor opened for reading.\n");break;exit(EXIT_FAILURE);

       case EMFILE: perror("The per-process limit on the number of open file descriptors has been reached.\n");break;exit(EXIT_FAILURE);


       case ENFILE: perror("The system-wide limit on the total number of open files has been reached.\n");break;exit(EXIT_FAILURE);



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
                            databaseMaker();
//                             printf(" Make use of the schema and the data helper utilities to fill the schema details and the input files\n");
                        }


       case ENOMEM: perror("Insufficient memory to complete the operation.\n");break;exit(EXIT_FAILURE);


       case ENOTDIR name is not a directory.
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
        DIR* table = opendir(tableName);
        if(table){
            if(mode == 0){
                //get
                void getQuery(fields_list,conditions_list);


            }
            else if(mode == 1){
                //insert
                    void insertQuery(tuple);

            }
            else if(mode == 2){
                //update
                void updateQuery(fields_list,tuple,conditions_list);
            }
            else{
                //delete
                  void deleteQuery(conditions_list);

            }
        else {
            handleError();
        }
    else{
         handleError();
    }
}

int main(int argc, char* argv[]){
    initFunction();
    while(1){
      yyparse();
    }
  return 0;
}

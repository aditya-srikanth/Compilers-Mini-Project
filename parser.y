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
  int yylex();
    extern int yyerror(const char* msg);
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
<<<<<<< HEAD
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
=======
	QUERY : 	GET_QRY		{ printf("Get query\n");}
				|
				INSERT_QRY  { printf("Insert query\n");}
				|
				UPDATE_QRY  { printf("Update query\n");}
				|
				DELETE_QRY  { printf("Delete query\n");}
				;

	GET_QRY: 	GET FIELD_LIST FROM FILE_NAME WHERE CONDITION_LIST
				;

	INSERT_QRY:	INSERT RECORD TUPLE INTO FILE_NAME
>>>>>>> 7e45703c208e77d7840b73ed1b50ca2e9e7fc8b9
                ;

    UPDATE_QRY: UPDATE RECORD IN FILE_NAME SET FIELD_LIST TO TUPLE WHERE CONDITION_LIST
                ;

<<<<<<< HEAD
    DELETE_QRY: DELETE RECORD FROM FILE_NAME WHERE CONDITION_LIST 
=======
    DELETE_QRY: DELETE RECORD FROM FILE_NAME WHERE CONDITION_LIST
>>>>>>> 7e45703c208e77d7840b73ed1b50ca2e9e7fc8b9
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
<<<<<<< HEAD
  fprintf(stderr," %s\n",msg);
=======
	fprintf(stderr," %s\n",msg);
>>>>>>> 7e45703c208e77d7840b73ed1b50ca2e9e7fc8b9
    return 0;
}

int main(void){
  while(1)  
      yyparse();
  return 0;
}

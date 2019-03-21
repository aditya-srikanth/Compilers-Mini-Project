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
	QUERY : 	GET_QRY
				|
				INSERT_QRY
				|
				UPDATE_QRY
				|
				DELETE_QRY
				;

	GET_QRY: 	GET FIELD_LIST FROM FILE_NAME WHERE CONDITION_LIST STMTTERM
				;

	INSERT_QRY:	INSERT RECORD TUPLE INTO FILE_NAME STMTTERM
                ;

    UPDATE_QRY: UPDATE RECORD IN FILE_NAME SET FIELD_LIST TO DATA_LIST WHERE CONDITION_LIST STMTTERM
                ;

    DELETE_QRY: DELETE RECORD FROM FILE_NAME WHERE CONDITION_LIST STMTTERM
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

    NUMERICAL_OPERAND: 	INTEGER | IDENTIFIER
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

int main(void){
	yyparse();
	return 0;
}

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
%}
%token GET FROM WHERE AND OR INSERT RECORD INTO UPDATE IN SET TO DELETE STMTTERM COMMA LEFT_PARANTHESIS RIGHT_PARANTHESIS STRING INTEGER IDENTIFIER
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

	TUPLE:      LEFT_PARANTHESES DATA_UNIT DATA_LIST RIGHT_PARANTHESES
                ;

	DATA_LIST:  COMMA DATA_UNIT DATA_LIST
                ;

    DATA_UNIT: STRING | INTEGER
               ;

    FILE_NAME: IDENTIFIER
%%

int yyerror(char* msg){
	fprintf(stderr," %s\n",msg);
}

int main(void){
	yyparse();
	return 0;
}

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
%token GET FROM WHERE AND OR INSERT RECORD INTO UPDATE  IN SET TO DELETE STMTTERM COMMA
%union{
	char* string;	
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

	INSERT_QRY:	INSERT RECORD 
%%

int yyerror(char* msg){
	fprintf(stderr," %s\n",msg);
} 

int main(void){
	yyparse();
	return 0;
}
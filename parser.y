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
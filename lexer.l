/*
 * @authors
 * Tanmay Kulkarni
 * Ch Vishal
 * Aditya Srikant
 *
 * Preamble:
 * The objective of the specification below is to specify the tokens that are used by MQL defined within the assignment.
 * Here we are making use of FLEX.
 */
%{
  //The first is to make sure all the user defined types are defined
  #include "datatypes.h"
  #include "y.tab.h"
  #include <string.h>
  extern int yyerror(const char* msg);
%}
ALPHA [a-zA-Z]
DIGIT [0-9]
%%
  /* This is a description of all the keywords used */
(?i:get) return GET;
(?i:from) return FROM;
(?i:where) return WHERE;
(?i:and) return AND;
(?i:or) return OR;
(?i:not) return NOT;
(?i:insert) return INSERT;
(?i:record) return RECORD;
(?i:into) return INTO;
(?i:update) return UPDATE;
(?i:in) return IN;
(?i:set) return SET;
(?i:to) return TO;
(?i:delete) return DELETE;

  /* Special symbols used : Paranthesis */
"("        return LEFT_PARANTHESES;
")"        return RIGHT_PARANTHESES;
  /* Relational Operators */
"<"     return LESS_THAN;
"<="    return LESS_THAN_EQUAL;
">"     return GREATER_THAN;
">="    return GREATER_THAN_EQUAL;
"=="   return EQUAL;
"!="    return NOT_EQUAL;

  /* String Operators */
= return STRING_COMPARISON;

  /* All the queries are terminated by a semi-colon */
; return 0;

  /* Comma to separate the list of fields */
, return COMMA ;

  /* This is an identifier */
([_]|{ALPHA})({ALPHA}|{DIGIT}|[$_])*   {
                      yylval.string=yytext;
                      return IDENTIFIER;
                    }

  /* This is a string */
\".+\"                                 {
                                            yylval.type = VAL_STRING;
                                            strcpy(yylval.value,yytext);
                                            return STRING;

                                        }

  /*  This is an integer  */
[-]?{DIGIT}+                                {
                                            yylval.type = VAL_INT;
                                            yylval.value = atoi(yytext);
                                            return INTEGER;
                                        }

  /* Ignoring whitespaces */
[ \t] ;
  /* ; signifies DO NOTHING */

  /* Any other character is invalid */
. puts(yytext); yyerror("This is an invalid character");
%%

int yywrap(void){
  return 1;
  // Return 1 when we successfully obtain a token
}

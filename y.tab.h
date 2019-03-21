/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    GET = 258,
    FROM = 259,
    WHERE = 260,
    INSERT = 261,
    RECORD = 262,
    INTO = 263,
    UPDATE = 264,
    IN = 265,
    SET = 266,
    TO = 267,
    DELETE = 268,
    STMTTERM = 269,
    COMMA = 270,
    LEFT_PARANTHESES = 271,
    RIGHT_PARANTHESES = 272,
    STRING = 273,
    INTEGER = 274,
    IDENTIFIER = 275,
    NOT = 276,
    AND = 277,
    OR = 278,
    LESS_THAN = 279,
    LESS_THAN_EQUAL = 280,
    GREATER_THAN = 281,
    GREATER_THAN_EQUAL = 282,
    EQUAL = 283,
    NOT_EQUAL = 284,
    STRING_COMPARISON = 285
  };
#endif
/* Tokens.  */
#define GET 258
#define FROM 259
#define WHERE 260
#define INSERT 261
#define RECORD 262
#define INTO 263
#define UPDATE 264
#define IN 265
#define SET 266
#define TO 267
#define DELETE 268
#define STMTTERM 269
#define COMMA 270
#define LEFT_PARANTHESES 271
#define RIGHT_PARANTHESES 272
#define STRING 273
#define INTEGER 274
#define IDENTIFIER 275
#define NOT 276
#define AND 277
#define OR 278
#define LESS_THAN 279
#define LESS_THAN_EQUAL 280
#define GREATER_THAN 281
#define GREATER_THAN_EQUAL 282
#define EQUAL 283
#define NOT_EQUAL 284
#define STRING_COMPARISON 285

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 20 "parser.y" /* yacc.c:1909  */

	char* string;
    int integer;

#line 119 "y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */

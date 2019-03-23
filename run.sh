#! /usr/bin/bash

echo "!!!WARNING!!! We are using lexer.l and parser.y as the lexer and parser respectively"
echo ""

echo "Running Bison"
yacc -d parser.y
echo ""

echo "Running Flex"
lex lexer.l
echo ""

echo "Compiling them together"
gcc y.tab.c lex.yy.c
echo ""

echo "Run the excutable"
./a.out
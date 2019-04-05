#ifndef DATA_TYPES
#define DATA_TYPES

#include <stdbool.h>
#include "headers.h"
// #include "defaults.h"
#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <dirent.h>
#define STRING "string"
#define INT "int"
#define ARRAY_SIZE 100
#define STRING_LENGTH 1000

typedef enum {VAL_INT, VAL_STRING}Type;

//Datatypes
struct Field{
	Type type;
	union Field_Type{
		int integer;
		char string[STRING_LENGTH];
	}value;
};

struct Field_List{
	struct Field field_array[ARRAY_SIZE];
	int length;
};

struct Record{
	struct Field_List current_field;
	struct Record* next_record;
};

struct Schema_Attributes{
	Type type;
	union Schema_Type{
		char field_name[STRING_LENGTH];
	}name;
};

struct Schema{
	struct Schema_Attributes* schema_definition;
	int length;
};


struct String{
	char string[STRING_LENGTH];
	int string_length;
};

struct String_List{
	struct String data;
	struct String_List* next_str;
	int length;
};


struct Condition_Operator_Type{
	enum {
		OPERTR,
		INT_TYPE,
		STRING_TYPE,
		BOOL_TYPE
	}type;
	int integer;
	char string[STRING_LENGTH];
	char opertr[3];
	bool bool_val;
};

union YYSTYPE{
    char string[STRING_LENGTH];
    int integer;
    struct Field field;
    struct Field_List* field_list_ptr;
    // struct Condition_Operator_Type;
    struct Record* record_ptr;
    struct String_List* string_list_ptr;
    bool boolean;
    struct Condition_Operator_Type condtional_operator;
};

#endif
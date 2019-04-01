#ifndef DATA_TYPES
#define DATA_TYPES

#include <stdbool.h>

#define STRING "string"
#define INT "int"
#define ARRAY_SIZE 100
#define STRING_LENGTH 30


//Datatypes
struct Field{
	enum {
		VAL_INT,
		VAL_STRING
	}type;
	union Types{
		int integer;
		char string[STRING_LENGTH];
	}value;
};

struct Field_List{
	struct Field field_array[ARRAY_SIZE];
	int length;
};

struct  Node_Type{
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

struct Node{
	struct Node_Type data;
	struct Node* left;
	struct Node* right;
};
#endif
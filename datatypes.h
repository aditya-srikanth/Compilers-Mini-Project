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

struct Record{
	struct Field_List current_field;
	struct Record* next_record;
};

bool push_back(){
	return false;
}

bool remove(int index){
	return false;
}

// struct Field_List get(int index){

// }

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



#endif
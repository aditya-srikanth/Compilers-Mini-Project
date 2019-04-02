#ifndef DATA_TYPES
#define DATA_TYPES

#include <stdbool.h>

#define STRING "string"
#define INT "int"
#define ARRAY_SIZE 100
#define STRING_LENGTH 30

typedef enum {VAL_INT, VAL_STRING}Type;
typedef union {}Types;

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

bool push_back(struct Record* record,struct Record** head ){
	return false;
}

void remove_element(struct Record record);

void remove_index(int index);
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
#ifndef DATA_TYPES
#define DATA_TYPES

#define STRING "string"
#define INT "int"
#define ARRAY_SIZE 100
#define STRING_LENGTH 30
//Datatypes
struct Field{
	enum {
		VAL_INT;
		VAL_STRING;
	}type;
	union Types{
		int integer;
		char string[RECORD_LENGTH];
	}value;
};

struct Field_List{
	struct Field field_array[ARRAY_SIZE];
	int length;
}
#endif
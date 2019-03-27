#ifndef DEFAULTS
#define DEFAULTS

//For the functions
#include <string.h>
#include <ctype.h>

 //Default values
#define MASTER_TABLE "./master"
#define DATA_PATH "./data"
#define SCHEMA_DELIM ":"
#define MAX_NAME_SIZE 100
#define RECORD_LENGTH 1000
#define PERMISSIONS 0777
#define FILE_DELIM "\t"
char* masterPath=MASTER_TABLE;
char* dataPath=DATA_PATH;

//functions
char* strlwr(char* input){
    for(int i=0;i<strlen(input);i++){
        input[i]=tolower(input[i]);
    }
    return input;
}
char* strupr(char* input){
    for(int i=0;i<strlen(input);i++){
        input[i]=toupper(input[i]);
    }
    return input;
}

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
#endif

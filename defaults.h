#ifndef DEFAULTS
#define DEFAULTS

//For the functions
#include <string.h>
#include <ctype.h>
#include <dirent.h>

 //Default values
#define MASTER_TABLE "./master"
#define DATA_PATH "./data"
#define SCHEMA_DELIM ":"
#define MAX_NAME_SIZE 100
#define RECORD_LENGTH 1000
#define PERMISSIONS 0777
#define FILE_DELIM "\t"
//Defaults for variables
char* masterPath=MASTER_TABLE;
char* dataPath=DATA_PATH;
FILE* schema_file_handle = NULL;
DIR* table_file_handle = NULL;
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

#endif

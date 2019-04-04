#ifndef DATA_TYPES
#define DATA_TYPES

#include <stdbool.h>
#include "headers.h"
#include "defaults.h"
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

void push_back(struct Field_List record, struct Record** head){
	if(*head == NULL){
        *head = (struct Record*)malloc(sizeof(struct Record));
        (*head)->current_field = record;
        (*head)->next_record = NULL;
    }
    else{
        struct Record* temp = *head;
        while(temp->next_record != NULL){
            temp = temp->next_record;
        }
        struct Record* temp_record = (struct Record*)malloc(sizeof(struct Record));
        temp_record->current_field = record;
        temp_record->next_record = NULL;
        temp->next_record = temp_record;
    }
}

bool find(struct Record record, struct Record* head){
    while(head != NULL){
        bool flag = true;
        // for(int i=0;i<record.current_field.length;i++){

        //check for just primary key, which is the first element in the array
        if(record.current_field.field_array[0].type == head->current_field.field_array[0].type){
            if( record.current_field.field_array[0].type == VAL_STRING){
                // printf("Matched the type string\n");
                if(strcmp(record.current_field.field_array[0].value.string,head->current_field.field_array[0].value.string) != 0){
                    flag = false;
                }
            }
            else{
                // printf("Matched the type int\n");
                if(record.current_field.field_array[0].value.integer != head->current_field.field_array[0].value.integer){
                    flag = false;
                }
            }
        }
        // }
        if(flag == true){
            return true;
        }
        head = head->next_record;
    }
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
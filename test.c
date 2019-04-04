#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <dirent.h>
#include "parser.h"
#define SCHEMA_DELIM ":"
#define FILE_DELIM "\t"
// #include "defaults.h"

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

void remove_element(struct Record record){
    return;
}

void remove_index(int index){
	return; 
}

void printlist(struct Record* head){
    printf("Now printing\n");
    while(head != NULL){
        int length = head->current_field.length;
        for(int i=0;i<length;i++){
            switch(head->current_field.field_array[i].type){
                case VAL_INT: printf("%d ",head->current_field.field_array[i].value.integer); break;
                case VAL_STRING: printf("%s ",head->current_field.field_array[i].value.string);break;
                default: printf("Invalid Type\n");
            }
        }
        printf("\n");
        head = head->next_record;
    }
}

int main(){
    struct Record* head = NULL;
    char* directory = "./data/employee/";
    DIR* table_file_handle = opendir(directory);
    if(table_file_handle==NULL){
        // handleError(0);
        printf("Unable to open the table\n");
        return 0;
    }
    printf("The table is found\n");
    struct dirent* file = NULL;
    char* line = NULL;
    size_t len = 0;
    ssize_t read;

    struct Schema schema;
    FILE* fp = fopen("./master/employee","r");
    if(fp == NULL){
        printf("File cannot be opened\n");
        return 0;
    }

    int number_of_attributes = 0;
    while((read=getline(&line,&len,fp)) != -1){
        number_of_attributes++;
    }
    schema.length = number_of_attributes;
    schema.schema_definition = (struct Schema_Attributes*)malloc(number_of_attributes*sizeof(struct Schema_Attributes));
    
    int index = 0;
    while((read = getline(&line,&len,fp)) != -1){
        char* token1 = strtok(line,SCHEMA_DELIM);
        strcpy(schema.schema_definition[index].name.field_name,token1);
        token1 = strtok(NULL,SCHEMA_DELIM);
        if(strcmp(token1,STRING)){
            schema.schema_definition[index++].type = VAL_STRING;
        }
        else{
            schema.schema_definition[index++].type = VAL_INT;
        }
        // strcpy(schema.schema_definition[index++].type,token1);
    }

    for(int i=0;i<number_of_attributes;i++){
        printf("%s\n",schema.schema_definition[i].name.field_name);
    }

    while((file=readdir(table_file_handle))!=NULL){
        if(file->d_type != DT_REG){// If it is not a regular file
            continue;
        }
        else{
            struct Field_List record;
            char filenames[1000];
            sprintf(filenames,"%s%s","./data/employee/",file->d_name);
            FILE* ffile = fopen(filenames,"r");
            read = getline(&line,&len,ffile);
            if(read == -1){
                printf("Line not found\n");
            }
            index = 0;
            char* token = strtok(line,FILE_DELIM);
            while(token != NULL){
                struct Field field;
                field.type = schema.schema_definition[index].type;
                if(field.type == VAL_INT){
                    field.value.integer = atoi(token);
                }
                else{
                    strcpy(field.value.string,token);
                }
                record.field_array[index++] = field;
                token = strtok(NULL,FILE_DELIM);
            }
            push_back(record,&head);
        }
    }
    printlist(head);
    struct Record rec;
    rec.next_record = NULL;
    rec.current_field.length = 2;
    rec.current_field.field_array[0].type = VAL_INT;
    rec.current_field.field_array[1].type = VAL_STRING;
    rec.current_field.field_array[0].value.integer = 21;
    strcpy(rec.current_field.field_array[1].value.string,"ss");
    bool val = find(rec,head);
    printf("%d\n",val);
    return 0;
}

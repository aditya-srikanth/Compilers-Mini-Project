#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "datatypes.h"
#include "defaults.h"

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

void remove_element(struct Record record){

}

void remove_index(int index){
	return; 
}

void printlist(struct Record* head){
    while(head != NULL){
        if(head->current_field.field_array[0].type == VAL_INT){
            printf("%d\n",head->current_field.field_array[0].value);
        }
        else{
            printf("%s\n",head->current_field.field_array[0].value);
        }
    }
}

int main(){
    struct Record* head = NULL;
    char* directory = "./data/employee/";
    DIR* table_file_handle = opendir(directory);
    if(table_file_handle==NULL){
        // handleError(0);
        printf("Unable to open the table\n");
    }
    printf("The table is found\n");
    FILE* file = NULL;
    char* line = NULL;
    size_t len = 0;
    ssize_t read;
    
    while((file=readdir(table_file_handle))!=NULL){
        if(file->d_type != DT_REG){// If it is not a regular file
            continue;
        }
        else{
            struct Field_List record;
            read = getline(&line,&len,file);
            if(read == -1){
                printf("Line not found\n");
            }
            char* token = strtok(line,FILE_DELIM);
            while(token != NULL){
                struct Field
                record.field_array[index++] = 
                token = strtok(NULL,FILE_DELIM);
            }
        }
    }
}
    return 0;
}
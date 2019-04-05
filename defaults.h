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

//functions
void strlwr(char* input){
    for(int i=0;i<strlen(input);i++){
        input[i]=tolower(input[i]);
    }
}
void strupr(char* input){
    for(int i=0;i<strlen(input);i++){
        input[i]=toupper(input[i]);
    }
}

void print_list(struct Record* head){
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

void print_list_masked(struct Record* head,int bitmask){
    printf("Now printing\n");
    while(head != NULL){
        int length = head->current_field.length;
        int value = bitmask;
        for(int i=0;i<length;i++){
            // printf("value:%d\n",value);
            if((value & 1) > 0){
                // printf("Inside the condition\n");
                switch(head->current_field.field_array[i].type){
                    case VAL_INT: printf("%d\t",head->current_field.field_array[i].value.integer); break;
                    case VAL_STRING: printf("%s\t",head->current_field.field_array[i].value.string);break;
                    default: printf("Invalid Type\n");
                }
            }
            value>>=1;
            if(value==0){
                break;
            }
        }
        printf("\n");   
        head = head->next_record;
    }
}
void push_back_string(struct String_Node input, struct String_List** list_ptr){
    struct String_List* list = *list_ptr;
    if(list->length == 0){
        list->head = (struct String_Node*)malloc(sizeof(struct String_Node));
        (list->head)->next_str = NULL;
        strcpy((list->head)->string,input.string);
        (list->head)->string_length = input.string_length;
    }
    else{
        struct String_Node* temp = list->head;
        while(temp->next_str != NULL){
            temp = temp->next_str;
        }
        struct String_Node* temp_string = (struct String_Node*)malloc(sizeof(struct String_Node));
        temp_string->next_str = NULL;
        temp_string->string_length = input.string_length;
        strcpy(temp_string->string,input.string);
        temp->next_str = temp_string;
    }
    list->length++;
}

int find_string(char* string, struct Schema schema){
    
    for (int i =0;i<schema.length;i++){
        if(strcmp(string,schema.schema_definition[i].name.field_name)==0){
            return i;
        }
    }
    return -1;
}

void push_back(struct Field_List record, struct Record** head){
	if(*head == NULL){
        *head = (struct Record*)malloc(sizeof(struct Record));
        (*head)->current_field = record;
        (*head)->next_record = NULL;
        printf("record ka field array first data is %d\n",record.field_array[0].value.integer);
        printf("head ka field array first data is %d\n",(*head)->current_field.field_array[0].value.integer);
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
    printf("The list after updation\n");
    print_list(*head);
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

void strip(char* input){
    for(int i=0;i<strlen(input);i++){
        if(input[i]=='\n'){
            input[i]='\0';
        }
    }
}
void remove_element(struct Record record);

void remove_index(int index);
// struct Field_List get(int index){

// }

#endif

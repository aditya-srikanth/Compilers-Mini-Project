/*
* Database Maker Utility
* Helps you write schemas for your input data
*/

#include <dirent.h>
#include <errno.h>
#include <stdio.h>
#include "defaults.h"


void databaseMaker(){
    printf("Enter the number of tables you want\n");
    int n;
    scanf("%d",&n);
    for(int i=0;i<n;i++){
        printf("Enter the table name\n");
        char name[MAX_NAME_SIZE];
        memset(name,0,sizeof(name));
        scanf("%s",name);
        printf("Enter the number of coloumns in your table\n");
        int cols;
        scanf("%d",&cols);
        char attr[cols][MAX_NAME_SIZE];
        char dtype[cols][MAX_NAME_SIZE];
        memset(attr,0,sizeof(attr));
        for(int j=0;j<cols;j++){
            printf("Enter the coloumn name and the datatype(string/int) separated by space");
            char a[MAX_NAME_SIZE],b[MAX_NAME_SIZE];
            memset(a,0,sizeof(a));
            memset(b,0,sizeof(b));
            scanf("%s",a);
            scanf("%s",b);
            if(strcmp(b,"string") == 0 || strcmp(b,"int") == 0){
                strcat(attr[j],a);
                strcat(dtype[j],b);
                continue;
            }
            else{
                printf("incorrect data type provided, please try again\n");
                j--;

            }
        }
        int foldercreated = mkdir(name,DEFFILEMODE);
        if(foldercreated == 0){
            //somehow save the table schema files dtype and attr in the same master folder
            printf("Table created successfully");
        }
        else{
            handleError(/*Tanny fill something here*/);
        }
    }

}

int main(void){
    printf("Welocome to the database maker utility\n");
    printf("This utility allows you to define schemas for your data\n");
    
    DIR* masterDirectory = opendir(MASTER_TABLE);
    if(masterDirectory){
        printf("%s\n","The master directory exists\n");
        databaseMaker();
    }
    else{
        printf("Encountered an issue\n");

        switch(errorno){
            case EACCES: perror("Permission denied.\n");exit(EXIT_FAILURE);break;

           case EBADF:  perror("fd is not a valid file descriptor opened for reading.\n");exit(EXIT_FAILURE);break;

           case EMFILE: perror("The per-process limit on the number of open file descriptors has been reached.\n");exit(EXIT_FAILURE);break;


           case ENFILE: perror("The system-wide limit on the total number of open files has been reached.\n");exit(EXIT_FAILURE);break;



            case ENOENT:    printf("Directory does not exist, or name is an empty string.\n");
                            if(isMaster==1){
                                char c;
                                printf("Do you want to create a new master Directory(y/n)\n");
                                scanf("%c",c);
                                if(c=='n' || c=='N'){
                                    printf("Terminating execution\n");
                                    exit(EXIT_SUCCESS);
                                }
                                else{
                                    // Create the default file locations in the current folder
                                    mkdir(MASTER_TABLE,DEFFILEMODE); // master files
                                    mkdir(DATA_PATH,DEFFILEMODE); // all the other database folders
                                    printf(" Make use of the schema and the data helper utilities to fill the schema details and the input files\n");
                                }
                            }
                            break;

           case ENOMEM: perror("Insufficient memory to complete the operation.\n");break;exit(EXIT_FAILURE);


           case ENOTDIR: perror("name is not a directory.\n");break;exit(EXIT_FAILURE);
    }

}
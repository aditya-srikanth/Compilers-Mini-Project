// Compiled with: gcc -std=c11 -Wall -pthread -lm

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "defaults.h"
int main(void)
{
    printf("Welcome to the converter utility\n");
    printf("Verifying the presence of the master and data folders\n");
    //TODO add the code of checking the presence of the folder here
    DIR* masterDirectory = opendir(MASTER_TABLE);
    if(masterDirectory){
        printf("%s\n","The master directory exists\n");
        dataKruncher();
    }
    else{
        printf("Encountered an issue\n");

        switch(errorno){
            case EACCES: perror("Permission denied.\n");exit(EXIT_FAILURE);break;

           case EBADF:  perror("fd is not a valid file descriptor opened for reading.\n");exit(EXIT_FAILURE);break;

           case EMFILE: perror("The per-process limit on the number of open file descriptors has been reached.\n");exit(EXIT_FAILURE);break;


           case ENFILE: perror("The system-wide limit on the total number of open files has been reached.\n");exit(EXIT_FAILURE);break;



            case ENOENT:    printf("Directory does not exist, or name is an empty string.\n");
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
                            break;

           case ENOMEM: perror("Insufficient memory to complete the operation.\n");break;exit(EXIT_FAILURE);


           case ENOTDIR: perror("name is not a directory.\n");break;exit(EXIT_FAILURE);
        }
    }


    return 0;
}
    void dataKruncher(){

        printf("Enter the name of the table\n");
        char tableName[MAX_NAME_SIZE];
        scanf("%s",tableName);
        //search for tableschema, nam kya hoga uska, tableschema.dat?
        char pathToSchema[MAX_NAME_SIZE];
        memset(pathToSchema,0,sizeof(pathToSchema));
        strcat(pathToSchema,MASTER_TABLE);
        strcat(pathToSchema,"/");
        strcat(pathToSchema,tableName);

        struct stat buffer;
        int exist = stat(pathToSchema,&buffer);
        printf("Enter the location of the database.txt file\n");
        char db[MAX_NAME_SIZE];
        scanf("%s",db);
        FILE* db = fopen(db,"r+");
        if(db==NULL){
            printf("Unable to find the file, check if the path given: %s , is correct",db);
            exit(EXIT_FAILURE);
        }
        else{

            if(exist == 0){

                printf("Schema found, in the master folder\n");
                FILE* dbschema = fopen(pathToSchema,"r");

                printf("Enter the delimiting character\n");
                char delim[2];
                scanf("%s",delim);
                //preliminary sanity checks for the txt file, checking if it matches the schema
                char testinput[RECORD_LENGTH];
                fgets(testinput,RECORD_LENGTH,db);

                char* token = strtok(testinput,delim);
                char * line = NULL;
                size_t len = 0;
                size_t read;

                while(token != NULL && (read = getline(&line,&len,dbschema)) != -1){
                    char* datatype = strtok(line,SCHEMA_DELIM);//ADD schema_delim to defaults
                    datatype = strtok(NULL,SCHEMA_DELIM);
                    char* tempptr;
                    if(strcmp(datatype,INT) == 0){
                        long val = strtol(token,&tempptr,10);
                        switch(errno){
                            EINVAL: perror("The given base contains an unsupported value.\n");break;

                            ERANGE: perror("The resulting value was out of range.\n");break;

                           EINVAL: perror("No conversion performed\n");break;
                        }
                        if(*tempptr!=0){
                            printf("Conversion failed\n");
                            exit(EXIT_FAILURE);
                        }
                    }
                    else if(strcmp(datatype,STRING)==0){
                        long val = strtol(token,&tempptr,10);
                        if(val != 0){
                            printf("WARNING!!: probably incorrect data, Integer found in place of string\n");
                        }
                    }
                    token = strtok(NULL,delim);
                }

                //reading the txt file
                fclose(db);
                fopen(db,"r");
                while((read = getline(&line,&len,db)) != -1){
                    //assuming the first attribute is the pkey
                    token = strtok(line,delim);
                    char tempfilename[MAX_NAME_SIZE];
                    memset(tempfilename,0,sizeof(tempfilename));
                    strcat(tempfilename,DATA_PATH);
                    strcat(tempfilename,"/");
                    strcat(tempfilename,tablename);
                    strcat(tempfilename,"/");
                    strcat(tempfilename,token);
                    strcat(tempfilename,".txt");
                    FILE* tempfp = fopen(tempfilename,"w");

                    fprintf(fp,line);
                    fclose(tempfp);
                }
                fclose(db);
            }

            else{
                printf("Please run the DataMaker.c file and the come back after creating the required schemas\n");
            }
        }
    }

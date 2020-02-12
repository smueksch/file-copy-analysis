#ifndef FILEIO
#define FILEIO

#include <stdlib.h>  // exit, EXIT_SUCCESS, EXIT_FAILURE
#include <stdio.h>   // perror
#include <fcntl.h>   // open
#include <unistd.h>  // close, read

/*********************
 * Types & Constants *
 *********************/

// Define type for file descriptors.
#define file_t int

// Size of buffer for copying from source to destination file in bytes.
#define COPY_BUFFER_SIZE 128

// Flag collection to create a write-only, append file. Also sets flag to abort
// creation if file already exists.
#define FILE_CREATE_FLAGS O_CREAT | O_EXCL | O_WRONLY | O_APPEND

// File permissions for new files. Permissions are set as follows:
// User: read, write
// Group: read
// Others: read
#define NEW_FILE_PERMISSIONS S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH

/***********************
 * Funtion-like Marocs *
 ***********************/

// Macro to manage repetitive task of reporting IO errors and terminating.
#define HANDLE_IO_ERROR(val, message) ({\
    if(val < 0) { \
        perror(message); \
        exit(EXIT_FAILURE); \
    } \
})

/****************
 * File I/O API *
 ****************/

int create_file(char* path);

int open_file(char* path, int flags);

void copy_content(file_t source, file_t destination);

void close_file(file_t file);

#endif

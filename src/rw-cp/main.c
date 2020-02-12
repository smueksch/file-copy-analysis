#include <stdlib.h>  // exit, NULL, EXIT_SUCCESS, EXIT_FAILURE
#include <stdio.h>   // printf, perror
#include <stdbool.h> // bool, true, false
#include <fcntl.h>   // open
#include <unistd.h>  // close, read
#include <errno.h>

// Number of required command line arguments.
#define REQUIRED_CLI_ARGUMENTS 3
// Size of buffer for copying from source to destination file in bytes.
#define COPY_BUFFER_SIZE 128

// Set flag for create a write-only append file. Also set flag to abort
// creation if file already exists.
#define FILE_CREATE_FLAGS O_CREAT | O_EXCL | O_WRONLY | O_APPEND

// User: read, write
// Grou: read
// Others: read
#define NEW_FILE_PERMISSIONS S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH

// Macro to manage repetitive task of reporting IO errors and terminating.
#define HANDLE_IO_ERROR(val, message) ({\
    if(val < 0) { \
        perror(message); \
        exit(EXIT_FAILURE); \
    } \
})

void print_usage() {
    printf("Usage:\n");
    printf("$ rw-cp <source> <destination>\n");
}

// Return file descriptor to newly created file.
//
// If creation of file fails, which may be due to the file already existing,
// then an error message is printed and the program is aborted.
int create_file(char* path) {
    int file_descriptor = open(path, FILE_CREATE_FLAGS, NEW_FILE_PERMISSIONS);

    HANDLE_IO_ERROR(file_descriptor, "Error creating file");

    return file_descriptor;
}

// Return file descriptor upon success, otherwise aborts program.
int open_file(char* path, int flags) {
    int file_descriptor = open(path, flags);

    HANDLE_IO_ERROR(file_descriptor, "Error opening file");

    return file_descriptor;
}

void close_file(int file_descriptor) {
    int closing_code = close(file_descriptor);

    HANDLE_IO_ERROR(closing_code, "Error closing file");
}

int main(int arg_c, char** arg_v) {
    if(arg_c >= REQUIRED_CLI_ARGUMENTS) {
        int source = open_file(arg_v[1], O_RDONLY);
        int destination = create_file(arg_v[2]);

        char copy_buffer[COPY_BUFFER_SIZE];

        ssize_t num_bytes_read = 0;
        ssize_t num_bytes_written = 0;

        // Repeat read and write loop until no more bytes were written. In that
        // case, we must have reached the end of the source file.
        do {
            num_bytes_read = read(source, copy_buffer, COPY_BUFFER_SIZE);
            HANDLE_IO_ERROR(num_bytes_read, "Error reading from source");

            num_bytes_written = write(destination, copy_buffer, num_bytes_read);
            HANDLE_IO_ERROR(num_bytes_written, "Error writing to destination");
        } while(num_bytes_written > 0);

        close_file(source);
        close_file(destination);

        exit(EXIT_SUCCESS);
    } else {
        print_usage();

        exit(EXIT_FAILURE);
   }
}

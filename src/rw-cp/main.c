#include <stdlib.h>  // exit, NULL, EXIT_SUCCESS, EXIT_FAILURE
#include <stdio.h>   // printf, perror
#include <stdbool.h> // bool, true, false
#include <fcntl.h>   // open
#include <unistd.h>  // close, read

// Number of required command line arguments.
#define REQUIRED_CLI_ARGUMENTS 3

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

int main(int arg_c, char** arg_v) {
    if (arg_c >= REQUIRED_CLI_ARGUMENTS) {
        printf("Copying %s to %s...\n", arg_v[1], arg_v[2]);

        char* path = arg_v[1];
        int file_descriptor = open(path, O_RDONLY);

        HANDLE_IO_ERROR(file_descriptor, "Error opening source file");

        char file_buffer[128];
        ssize_t num_bytes_read = read(file_descriptor, file_buffer, 128);

        HANDLE_IO_ERROR(num_bytes_read, "Error reading source file");

        printf("File content:\n%s\n", file_buffer);

        HANDLE_IO_ERROR(close(file_descriptor), "Error closing source file");

        exit(EXIT_SUCCESS);
    } else {
        print_usage();

        exit(EXIT_FAILURE);
   }
}

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
    if (arg_c >= REQUIRED_CLI_ARGUMENTS) {
        int file_descriptor = open_file(arg_v[1], O_RDONLY);

        char file_buffer[128];
        ssize_t num_bytes_read = read(file_descriptor, file_buffer, 128);

        HANDLE_IO_ERROR(num_bytes_read, "Error reading source file");

        file_buffer[num_bytes_read] = '\0';
        printf("File content:\n%s\n", file_buffer);

        close_file(file_descriptor);

        exit(EXIT_SUCCESS);
    } else {
        print_usage();

        exit(EXIT_FAILURE);
   }
}

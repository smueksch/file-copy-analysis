#include <stdlib.h>  // exit, EXIT_SUCCESS, EXIT_FAILURE
#include <stdio.h>   // printf
#include <stdbool.h> // bool, true, false
#include "fileio.h"

// Number of required command line arguments.
#define REQUIRED_CLI_ARGUMENTS 3

void print_usage() {
    printf("Usage:\n");
    printf("$ rw-cp <source> <destination>\n");
}

int main(int arg_c, char** arg_v) {
    if(arg_c < REQUIRED_CLI_ARGUMENTS) {
        print_usage();
        exit(EXIT_FAILURE);
    } else {
        file_t source = open_file(arg_v[1], O_RDONLY);
        // TODO: Create file under same permissions as source.
        file_t destination = create_file(arg_v[2]);

        copy_content(source, destination);

        close_file(source);
        close_file(destination);

        exit(EXIT_SUCCESS);
   }
}

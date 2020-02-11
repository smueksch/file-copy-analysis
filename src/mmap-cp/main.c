#include <stdio.h>
#include <stdbool.h>

// Number of required command line arguments.
#define REQUIRED_CLI_ARGUMENTS 3

void print_usage() {
    printf("Usage:\n");
    printf("$ rw-cp <source> <destination>\n");
}

int main(int arg_c, char** arg_v) {
    if (arg_c >= REQUIRED_CLI_ARGUMENTS) {
        printf("Copying %s to %s...\n", arg_v[1], arg_v[2]);

        return 0;
    } else {
        print_usage();

        return 1;
   }
}

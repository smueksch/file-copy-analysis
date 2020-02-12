#include "fileio.h"

// Return file descriptor to newly created file.
//
// If creation of file fails, which may be due to the file already existing,
// then an error message is printed and the program is aborted.
int create_file(char* path) {
    int file_descriptor = open(path, FILE_CREATE_FLAGS, NEW_FILE_PERMISSIONS);
    HANDLE_IO_ERROR(file_descriptor, "Error creating file");

    return file_descriptor;
}

// Return file descriptor to opened file upon success, otherwise aborts program.
int open_file(char* path, int flags) {
    int file_descriptor = open(path, flags);
    HANDLE_IO_ERROR(file_descriptor, "Error opening file");

    return file_descriptor;
}

// Copy content from one file to the other. Abort program in case of IO error.
void copy_content(file_t source, file_t destination) {
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
}

void close_file(file_t file) {
    int closing_code = close(file);

    HANDLE_IO_ERROR(closing_code, "Error closing file");
}

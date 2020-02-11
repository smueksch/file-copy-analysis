# Overview

This is a small project to investigate two different, stripped-down implementations of the ```cp``` command. The first, ```rw-cp``, will use ```read()``` and ```write()``` system calls, whereas the second, ```mmap-cp``` will use ```mmap()``` and ```memcpy()``` system calls.

# Compilation

In the root of this project, execute the following:

```
$ cmake .
$ cmake --build .
```

# Usage

Both implementations are capable only of copying files from one destination to another. As such, both of them do not provide command-line arguments familiar from the ```cp``` tool, they only take a ```<source>``` file and a ```<destination>```:

```
$ rw-cp <source> <destination>
```

```
$ mmap-cp <source> <destination>
```

Example usage:

```
$ rw-cp my_file.txt my_copy.txt
```

```
$ mmap-cp my_file.txt my_copy.txt
```

# Resources Used

- [CMake Tutorial](https://cmake.org/cmake/help/latest/guide/tutorial/index.html)

#
#
#

all: second

second: second.o series_routines.o common_data.o
	gfortran -g -o second second.o series_routines.o common_data.o

second.o: second.f90 common_data.o series_routines.o
	gfortran -g -c second.f90

series_routines.o: series_routines.f90
	gfortran -g -c series_routines.f90

common_data.o: common_data.f90
	gfortran -g -c common_data.f90


clean:
	rm -f *.o *.mod second

.PHONY: all clean

run: second
	./second

# This Makefile compiles a Fortran program named "second" from the source file "second.f90".
# It creates an object file "second.o" and links it to produce the executable.
# The `clean` target removes the object file and the executable.
# To build the program, run `make` in the terminal.
# To clean up the directory, run `make clean`.
# The `-c` flag in the compilation command tells gfortran to compile the source file into an object file without linking.
# The `-o` flag specifies the name of the output executable.

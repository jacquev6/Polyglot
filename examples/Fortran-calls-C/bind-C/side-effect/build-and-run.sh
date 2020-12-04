# Compile the C guest
gcc -c guest.c

# Compile the Fortran host and wrapper
gfortran -c host.f90 wrapper.f90

# Link
gfortran host.o wrapper.o guest.o

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

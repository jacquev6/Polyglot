# Compile the Fortran guest and wrapper
gfortran -c guest.f90 wrapper.f90

# Compile the C host
gcc -c host.c

# Link
gfortran host.o wrapper.o guest.o

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

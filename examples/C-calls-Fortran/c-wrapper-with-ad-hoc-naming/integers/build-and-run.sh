# Compile the Fortran guest
gfortran -c guest.f90

# Compile the C host and wrapper
gcc -c host.c wrapper.c

# Link
gfortran host.o wrapper.o guest.o

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

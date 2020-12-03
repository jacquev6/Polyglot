rm -f host.o wrapper.o guest.o a.out

# Compile the Fortran guest and wrapper
gfortran -c guest.f90 wrapper.f90

# Compile the C host
gcc -c host.c

# Link
gcc host.o wrapper.o guest.o -lgfortran

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

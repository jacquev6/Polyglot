# DON'T DO THAT. Method described in ../../bind-C is much more generic

# Compile the C guest
gcc -c guest.c wrapper.c

# Compile the Fortran host and wrapper
gfortran -c host.f90

# Link
gfortran host.o wrapper.o guest.o

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

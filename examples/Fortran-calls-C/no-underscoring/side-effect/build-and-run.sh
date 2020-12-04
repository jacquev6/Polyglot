# DON'T DO THAT. Method described in ../../bind-C is much more generic

# Compile the C guest
gcc -c guest.c

# Compile the Fortran wrapper without adding the final underscore
gfortran -fno-underscoring -c wrapper.f90

# Compile the Fortran host normally
gfortran -c host.f90

# Link
gfortran host.o wrapper.o guest.o

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

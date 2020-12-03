# Compile the C guest
gcc -c guest.c

# Compile the C++ host and wrapper
g++ -c host.cpp wrapper.cpp

# Link
g++ host.o wrapper.o guest.o

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

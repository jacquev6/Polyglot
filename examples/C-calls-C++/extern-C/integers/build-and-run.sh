# Compile the C++ guest and wrapper
g++ -c guest.cpp wrapper.cpp

# Compile the C host
gcc -c host.c

# Link
g++ host.o wrapper.o guest.o

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

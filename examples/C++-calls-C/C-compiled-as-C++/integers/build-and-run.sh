# Compile everything as C++
g++ -c host.cpp wrapper.cpp guest.c

# Link
g++ host.o wrapper.o guest.o

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

# Compile everything as C++
g++ -c host.c wrapper.cpp guest.cpp

# Link
g++ host.o wrapper.o guest.o

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

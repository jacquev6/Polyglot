# Compile everything as CUDA
nvcc -c host.cpp wrapper.cpp guest.cu

# Link
nvcc host.o wrapper.o guest.o

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

# Compile guest code as CUDA
nvcc -c guest.cu

# Compile host code as C++
g++ -c host.cpp wrapper.cpp

# Link
nvcc host.o wrapper.o guest.o

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

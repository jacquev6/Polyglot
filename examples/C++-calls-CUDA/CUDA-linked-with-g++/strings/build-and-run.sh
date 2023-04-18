# Compile guest code as CUDA
nvcc -c guest.cu

# Compile host code as C++
g++ -c host.cpp wrapper.cpp

# Link
g++ host.o wrapper.o guest.o -L/usr/local/cuda-12.1/targets/x86_64-linux/lib -lcudart

# Run
./a.out

# Clean-up
rm host.o wrapper.o guest.o a.out

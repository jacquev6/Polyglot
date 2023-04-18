# Compile CUDA code as a dynamic library
nvcc -Xcompiler -fPIC -shared guest.cu -o libguest.so

# Compile extension
g++ -fPIC -shared $(pkg-config python3 --cflags) wrapper.cpp -L. -lguest -o wrapper.so

# Run
LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH PYTHONPATH=.:$PYTHONPATH python3 ./host.py

# Clean-up
rm libguest.so wrapper.so

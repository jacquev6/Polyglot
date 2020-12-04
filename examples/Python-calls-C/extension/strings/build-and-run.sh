# Compile C code as a dynamic library
gcc -fPIC -shared guest.c -o libguest.so

# Compile extension
gcc -fPIC -shared $(pkg-config python3 --cflags) wrapper.c -L. -lguest -o wrapper.so

# Run
LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH PYTHONPATH=.:$PYTHONPATH python3 ./host.py

# Clean-up
rm libguest.so wrapper.so

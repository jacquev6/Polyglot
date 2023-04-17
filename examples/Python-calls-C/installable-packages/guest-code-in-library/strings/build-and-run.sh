# Compile C code as a dynamic library
gcc -fPIC -shared guest.c -o libguest.so

# Compile extension
pip3 install ./package >log.txt 2>&1

# Run
LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH python3 ./host.py

# Clean up
rm log.txt
rm libguest.so

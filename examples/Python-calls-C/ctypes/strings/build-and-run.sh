# Compile C code as a dynamic library
gcc -fPIC -shared guest.c -o libguest.so

# Run
PYTHONPATH=.:$PYTHONPATH python3 ./host.py

# Clean-up
rm libguest.so

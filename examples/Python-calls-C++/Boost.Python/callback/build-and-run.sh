# Compile C++ code as a dynamic library
g++ -fPIC -shared guest.cpp -o libguest.so

# Compile extension
g++ -fPIC -shared $(pkg-config python3 --cflags) wrapper.cpp -lboost_python38 -L. -lguest -o wrapper.so

# Run
LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH PYTHONPATH=.:$PYTHONPATH python3 ./host.py

# Clean-up
rm libguest.so wrapper.so

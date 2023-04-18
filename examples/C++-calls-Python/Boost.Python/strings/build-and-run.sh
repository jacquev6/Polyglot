# Compile C++ host and wrapper
g++ $(pkg-config python3-embed --cflags) host.cpp wrapper.cpp $(pkg-config python3-embed --libs) -lboost_python310 >log.txt 2>&1

# Run
./a.out

# Clean-up
rm a.out
rm log.txt

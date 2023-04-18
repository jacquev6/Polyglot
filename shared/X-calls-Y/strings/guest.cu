#include <sstream>

#include "guest.cuh"

__global__ void kernel() {}

std::string guest(const std::string& host) {
    // @todo(When I have access to a GPU) Implement in a kernel
    std::ostringstream oss;
    oss << "Hello " << host << ", I'm CUDA!";
    return oss.str();
}

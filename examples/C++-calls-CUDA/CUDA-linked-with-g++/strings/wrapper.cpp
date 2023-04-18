#include "wrapper.hpp"
#include "guest.cuh"

std::string wrapper(const std::string& host) {
  return guest(host);
}

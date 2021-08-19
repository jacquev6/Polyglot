#include "wrapper.hpp"

#include <boost/python.hpp>


namespace bp = boost::python;

std::string wrapper(const std::string& host) {
    Py_Initialize();
    bp::object global(bp::import("__main__").attr("__dict__"));
    bp::exec_file("guest.py", global, global);
    bp::object guest = global["guest"];
    return bp::extract<std::string>(guest(host));
}

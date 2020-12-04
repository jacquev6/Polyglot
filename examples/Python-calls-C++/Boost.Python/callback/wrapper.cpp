#include <boost/python.hpp>
namespace bp = boost::python;

#include "guest.hpp"

std::string wrapper(const std::string& host, bp::object f) {
    return guest(
        host,
        [f](const std::string& s) {
            return bp::extract<std::string>(f(s))();
        }
    );
}

BOOST_PYTHON_MODULE(wrapper)
{
    bp::def("wrapper", wrapper);
}

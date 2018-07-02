#include <boost/python.hpp>
namespace bp = boost::python;

#include "guest.hpp"

std::string wrapped_greet(const std::string& guest, bp::object f) {
    return greet(
        guest,
        [f](const std::string& s) {
            return bp::extract<std::string>(f(s))();
        }
    );
}

BOOST_PYTHON_MODULE(wrapper)
{
    bp::def("greet", wrapped_greet);
}

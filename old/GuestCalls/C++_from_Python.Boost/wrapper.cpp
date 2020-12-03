#include <boost/python.hpp>
namespace bp = boost::python;

#include "guest.hpp"

BOOST_PYTHON_MODULE(wrapper)
{
    bp::def("greet", greet);
}

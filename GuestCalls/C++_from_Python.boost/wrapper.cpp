#include <boost/python.hpp>

#include "../guest.hpp"

BOOST_PYTHON_MODULE(wrapper)
{
    boost::python::def("greet", greet);
}

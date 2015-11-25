#include <boost/python.hpp>

#include "../../guests/C++/hello.hpp"

BOOST_PYTHON_MODULE(hello)
{
    boost::python::def("hello", hello);
}

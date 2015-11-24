#include <iostream>

#include <boost/python.hpp>

void hello() {
    std::cout << "GUEST (C++) says 'Hello World!'" << std::endl;
}

BOOST_PYTHON_MODULE(hello)
{
    boost::python::def("hello", hello);
}
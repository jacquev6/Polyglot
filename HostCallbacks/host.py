from __future__ import print_function

import sys

import wrapper

host = "Python {}".format(sys.version_info.major)

print(wrapper.greet(host, str.upper))

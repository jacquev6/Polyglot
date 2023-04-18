# Copy sources into package directory because distutils builds it in a temporary directory,
# which break relative symlinks
cp ../../../../../shared/X-calls-Y/strings/guest.{cu,cuh} package

# Compile extension
pip3 install ./package >log.txt 2>&1
# @todo Understand why this is built in place, but Python-calls-C/installable-packages are built in /tmp
rm -r package/{build,wrapper.egg-info}

# Run
python3 ./host.py

# Clean up
rm log.txt
rm package/guest.{cu,cuh}

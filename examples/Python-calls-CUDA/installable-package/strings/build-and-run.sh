# Copy sources into package directory because distutils builds it in a temporary directory,
# which break relative symlinks
cp ../../../../shared/X-calls-Y/strings/guest.{cu,cuh} package

# Compile extension
pip3 install ./package >log.txt 2>&1
rm -r package/{build,wrapper.egg-info}

# Run
python3 ./host.py

# Clean up
rm log.txt
rm package/guest.{cu,cuh}

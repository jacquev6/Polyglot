# Copy sources into package directory because distutils builds it in a temporary directory,
# which break relative symlinks
cp ../../../../../shared/X-calls-Y/strings/guest.{c,h} package

# Compile extension
pip3 install ./package

# Run
python3 ./host.py

# Clean up
rm package/guest.{c,h}

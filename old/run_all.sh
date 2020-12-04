#!/bin/bash

set -o errexit

echo '=============='
echo '"Hello World"s'
echo '=============='
echo
cd HelloWorlds
./run_all.sh
cd ..

echo '==========='
echo 'Guest calls'
echo '==========='
echo
cd GuestCalls
./run_all.sh
cd ..

echo '=============='
echo 'Host callbacks'
echo '=============='
echo
cd HostCallbacks
./run_all.sh
cd ..
#!/bin/sh

./nodeserv -addr 0.0.0.0 &
./synerex-server &
./proxy &
./harmovis-layers 

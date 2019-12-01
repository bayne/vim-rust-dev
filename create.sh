#!/bin/bash
if [ -z "$1" ]; then
    echo "Missing project directory" 
    exit 1
fi

docker create -v`pwd`:/project --name vim_rust_dev -it vim_rust_dev

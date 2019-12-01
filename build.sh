#!/bin/bash
git submodule init
git submodule update
docker build -t vim_rust_dev .

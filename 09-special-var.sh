#!/bin/bash

echo "all variables passed to the script: $@"
echo "Number of variables passed:$#"
echo "script name: $0"
echo "current working directory: $PWD"
echo " process idof script execute now: $$"
echo "home directory of current user: $HOME"
echo "last background pid: $!"
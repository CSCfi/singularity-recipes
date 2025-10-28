#!/bin/bash

module --force purge
module load CrayEnv
module load systools


./bin/build-container -i input/ -o output/

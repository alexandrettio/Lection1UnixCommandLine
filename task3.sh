#!/bin/bash

find . -iname '*.log' -type f -exec grep 'error' -l {} \; | tee ERRORS.txt | xargs ls -l | awk  -F" " '{print $9 " " $5}'
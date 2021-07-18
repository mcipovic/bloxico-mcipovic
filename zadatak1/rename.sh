#!/bin/bash

for file in  `find . -name "*.yaml"`
  do
     mv "$file" "${file//dev/prod}"
     echo "$file", "${file//dev/prod}"
done

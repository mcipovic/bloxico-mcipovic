#!/bin/bash

for file in  `find . -name "*.yaml"`
  do
     mv "$file" "${file//prod/dev}"
     echo "$file", "${file//prod/dev}"
done

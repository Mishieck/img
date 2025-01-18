#!/bin/bash

filenamePattern='(.+)\.[a-zA-Z]+$'
filenames=$1
outputExtension=$2
options=$3

for filename in $filenames; do
  if [[ $filename =~ $filenamePattern ]]; then
    inputName=${BASH_REMATCH[1]}
    outputFilename="$inputName.$outputExtension"
    ffmpeg -i $filename $options $outputFilename
  fi
done

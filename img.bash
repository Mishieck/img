#!/bin/bash

filenamePattern='(.+)\.[a-zA-Z]+$'
filenames=$1 # NOTE: Quoted list
outputExtension=$2 # PNG, JPEG, WEBP, etc
options=$3 # ffmpeg options

for filename in $filenames; do
  if [[ $filename =~ $filenamePattern ]]; then
    inputName=${BASH_REMATCH[1]}
    outputFilename="$inputName.$outputExtension"
    ffmpeg -i $filename $options $outputFilename
  fi
done

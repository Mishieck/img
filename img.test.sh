#!/bin/bash

inputImages='./images/*' # WARN: Test images must be added
outputImages='./images/*.webp'
imageCount=0

# Removes test output images so that they do not interfere with the next test
remove-output-images() {
  rm -r images/*.webp
}

# Counts input or output images in the image directory
count-images() {
  imageCount=0

  for img in $1; do
    imageCount=$(($imageCount + 1))
  done
}

remove-output-images
./img.sh "$inputImages" webp

count-images "$inputImages"
inputImageCount=$imageCount
count-images "$outputImages"
outputImageCount=$imageCount
testImagesPresent=([[ $inputImageCount -gt 0 ]])
countsEqual=([[ $inputImageCount -eq $outputImageCount ]])

if [[ $testImagesPresent && $countsEqual ]]; then
  echo ""
  echo "$imageCount images processed."
  echo ""
  echo "PASSED"
else
  echo "FAILED"
fi

remove-output-images # Clean up

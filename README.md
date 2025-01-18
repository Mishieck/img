# img

A bash script for precesing multiple images at once using FFmpeg.

## Usage

```sh
path-to-img.sh 'file-list' $outputFormat $ffmpegOptions
```

where:

- `path-to-img.sh` is the path to the script
- `file-list` is the list of files to be processed. Make sure that the list is
  put in quotes. This should be done even if you're using a glob.
- `$outputFormat` is the format of the processed files like `png`, `jpeg`, 
  `webp` etc.
- `ffmpegOptions` is the options you would normally pass as arguments to FFmpeg

## Examples

### Without Options

```sh
./img.sh './images/*.png' webp
```

### With Options

```sh
./img.sh './images/*.png' webp '-compression_level 60'
```

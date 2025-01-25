# img

A bash script for precesing multiple images at once using FFmpeg.

## Usage

You can run the script directly or use an alias. In this documentation, it is
assumed that you are using an alias.

### Alias

```bash
alias img="path-to-img.bash"
```

### Running Commands

```bash
img FILE_LIST OUTPUT_FORMAT [FFMPEG_OPTIONS]
```

where:

- `FILE_LIST` is the list of files to be processed. Make sure that the list is
  put in quotes. This should be done even if you're using a glob.
- `OUTPUT_FORMAT` is the format of the processed files like `png`, `jpeg`, 
  `webp` etc.
- `FFMPEG_OPTIONS` are the options you would normally pass as arguments to FFmpeg

## Examples

### Without Options

```bash
img './images/*.png' webp
```

### With Options

```bash
img './images/*.png' webp '-compression_level 60'
```

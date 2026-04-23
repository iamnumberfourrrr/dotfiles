# Usage: vcompress video.mp4 [output.mp4]
vcompress() {
  local input="$1"
  local output="$2"

  if [[ -z "$input" ]]; then
    echo "Usage: vcompress <input> [output]"
    return 1
  fi

  if [[ -z "$output" ]]; then
    output="${input%.*}_compressed.${input##*.}"
  fi

  ffmpeg -i "$input" -vcodec libx264 -crf 23 -preset slow -c:a copy "$output"
}

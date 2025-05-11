param([string]$SourceFile)

# Trim any quotes around the incoming path
$source = $SourceFile.Trim('"')

# Change extension from .wav to .mp3
$outputFile = [System.IO.Path]::ChangeExtension($source, '.mp3')

# Path to your ffmpeg executable
$ffmpegPath = 'C:\ffmpeg\bin\ffmpeg.exe'

# Run ffmpeg to convert to 320 kbps MP3, overwrite if exists
& $ffmpegPath -i "$source" -codec:a libmp3lame -b:a 320k -y "$outputFile"

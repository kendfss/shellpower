image = $args[0]
audio = $args[1]
ffmpeg -loop 1 -i $image -i $audio -c:v libx264 -tune stillimage -c:a copy -b:a 192k -pix_fmt yuv420p -shortest out.mp4

# https://duckduckgo.com/?q=ffmpeg+combine+photo+and+audio&t=ffab&ia=web&iax=qa | ffmpeg combine photo and audio at DuckDuckGo
# https://www.bannerbear.com/blog/how-to-create-a-slideshow-from-images-with-ffmpeg/ | How to Create a Slideshow from Images with FFmpeg - Bannerbear
# https://ffmpeg.org/ffmpeg.html | ffmpeg Documentation
# https://duckduckgo.com/?t=ffab&q=high+level+mp4+library&ia=web | high level mp4 library at DuckDuckGo

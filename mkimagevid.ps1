ffmpeg -r 0.1 -f concat -safe 0 -i image_list.txt -c:v libx264 -pix_fmt yuv420p out.mp4

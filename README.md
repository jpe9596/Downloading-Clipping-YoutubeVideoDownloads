# Downloading-Clipping-YoutubeVideos
Using a Dockerfile and Python Script to download & clip Youtube videos.


# Install Docker on your OS

#Run the following commands on your CLI.

docker build -t my-ubuntu-container .

docker run -p 2223:22 -d my-ubuntu-container

ssh root@localhost -p 2223 

#Run the python script within the docker container to download and clip youtube videos. Then use scp to download the mp4 & mp3 file from the container your OS.

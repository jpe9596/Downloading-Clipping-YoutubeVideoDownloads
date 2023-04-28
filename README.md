# Downloading-&-Clipping-YoutubeVideos
Using a Dockerfile and Python Script to download & clip Youtube videos.


# Install Docker on your OS

# Run the following command on your CLI to build the container from the Dockerfile provided in this repository. 

docker build -t my-ubuntu-container .

docker run -p 2223:22 -d my-ubuntu-container

ssh root@localhost -p 2223 

# Run the python script within the docker container to download and clip youtube videos. 

# Then use scp to download the mp4 & mp3 file from the container to your local file system, or whatever machine you desire to store the files. 
# I personally combine the mp3 and mp4 files using iMovie on my Mac.

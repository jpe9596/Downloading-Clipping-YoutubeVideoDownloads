import os
import moviepy.editor as mp
from pytube import YouTube

# Prompt user for URL input
url = input("Enter YouTube video URL: ")

# Download YouTube video
yt = YouTube(url)
stream = yt.streams.filter(progressive=True, 
file_extension='mp4').order_by('resolution').desc().first()
video_file = stream.download()
print("Video downloaded successfully.")

# Get the first minute of the video
start_time = 0
end_time = 60

# Create new file name
new_filename = os.path.splitext(video_file)[0] + '_1min.mp4'

# Use MoviePy to edit video
clip = mp.VideoFileClip(video_file).subclip(start_time, end_time)
clip.write_videofile(new_filename)

# Extract audio from edited video
audio_clip = clip.audio
audio_filename = os.path.splitext(new_filename)[0] + '.mp3'
audio_clip.write_audiofile(audio_filename)

# Delete original and edited video files
os.remove(video_file)

print("Done. Audio file saved as", audio_filename)

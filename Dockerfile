FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        ffmpeg \
        libsndfile1 \
        ssh

# Install Python packages
RUN pip3 install \
        moviepy \
        pydub

# Set root password
RUN echo 'root:Anonymous' | chpasswd

# Configure SSH
RUN mkdir /var/run/sshd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Expose SSH port
EXPOSE 22

# Start SSH daemon
CMD ["/usr/sbin/sshd", "-D"]

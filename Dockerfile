# Use an official Ubuntu runtime as a parent image
FROM ubuntu:18.04

# To avoid the hanging when setting TZ by hand
ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update
RUN apt install -y tzdata

# Update the package list and install required packages
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    cmake \
    git \
    libgtk2.0-dev \
    pkg-config \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libtbb2 \
    libtbb-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    libopencv-dev

RUN apt-get install -y \
    libdc1394-22 \
    libdc1394-22-dev

# Set the working directory to /app
WORKDIR /work_dir

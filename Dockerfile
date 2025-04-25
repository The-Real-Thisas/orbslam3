# Use the official ROS Humble base image
FROM ros:humble

# Set the environment variable
ENV DEBIAN_FRONTEND=noninteractive

# Set the working directory to /ORB_SLAM3
WORKDIR /ORB_SLAM3

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    && rm -rf /var/lib/apt/lists/*
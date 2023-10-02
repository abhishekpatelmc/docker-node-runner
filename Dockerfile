# Use an official base image (such as Ubuntu) from Docker Hub
FROM ubuntu:latest

# Install necessary packages: Git, Node.js, npm, curl, nano, and build tools
RUN apt-get update \
    && apt-get install -y git \
    && apt-get install -y curl \
    && apt-get install -y nano \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && npm install -g npm@10.1.0

# Expose a port (replace 8080 with the desired port number)
EXPOSE 8080

# Set the working directory to /app
WORKDIR /app

# Command to run when the container starts
CMD ["bash"]

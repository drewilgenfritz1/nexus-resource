# Use Ubuntu as the base image
FROM ubuntu:latest

# Install necessary tools (jq and curl)
RUN apt-get update && apt-get install -y \
    jq \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Create directory for scripts
RUN mkdir -p /opt/resource

# Copy your resource script into the image
COPY scripts /opt/resource

# Set the entrypoint
ENTRYPOINT ["/opt/resource/check", "/opt/resource/in", "/opt/resource/out"]

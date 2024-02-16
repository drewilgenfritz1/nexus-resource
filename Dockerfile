# Use an Alpine Linux base image
FROM alpine:latest

# Install curl and jq
RUN apk --no-cache add curl jq

# Create directory for scripts
RUN mkdir -p /opt/resource

# Copy your resource script into the image
COPY scripts /opt/resource

# Set the entrypoint
ENTRYPOINT ["/opt/resource/check", "/opt/resource/in", "/opt/resource/out"]

# Use an appropriate base image
FROM alpine:latest

# Install necessary tools (e.g., curl, jq)
RUN apk add --no-cache curl jq

# Copy your resource script into the image
COPY scripts /opt/resource

# Set the entrypoint
ENTRYPOINT ["/opt/resource/check", "/opt/resource/in", "/opt/resource/out"]

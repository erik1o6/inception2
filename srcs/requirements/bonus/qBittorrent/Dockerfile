# Use the official Debian Buster image as the base image
FROM debian:bullseye

# Set environment variables for non-interactive installation
ENV DEBIAN_FRONTEND noninteractive

# Install qBittorrent-nox and its dependencies
RUN apt-get update && \
    apt-get install -y qbittorrent-nox && \
    apt-get clean

# Expose the port for qBittorrent's Web UI
EXPOSE 8081

# Start qBittorrent-nox on container startup
CMD ["sh", "-c", "echo 'y' | qbittorrent-nox --webui-port=8081"]
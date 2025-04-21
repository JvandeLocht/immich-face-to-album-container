# Dockerfile for immich-face-to-album
# Use an official Python runtime as a parent image. Adjust the version if needed.
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Install the application and its dependencies.
# 'pip install .' reads pyproject.toml (or setup.py) and installs the package.
# Using --no-cache-dir reduces the final image size by not storing the pip download cache.
RUN pip install --no-cache-dir immich-face-to-album

# Set the entrypoint to the command provided by the installed package.
# This allows running the container directly with the application's arguments.
ENTRYPOINT ["immich-face-to-album"]

# Provide a default command, such as showing help, if no arguments are passed to 'docker run'.
CMD ["--help"]


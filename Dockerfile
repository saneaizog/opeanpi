# Container image that runs your code
FROM node:17.6-slim

# Installs spectral-cli
RUN npm install -g @stoplight/spectral-cli

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Executes `entrypoint.sh` when the Docker container starts up
ENTRYPOINT ["/entrypoint.sh"]
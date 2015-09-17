FROM nginx

# Install base packages.
RUN apt-get update && apt-get -y install \
  nano \
  rsync

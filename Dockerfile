# Upstream Dockerfile https://github.com/rocker-org/rocker-versioned/blob/master/tidyverse/3.4.4/Dockerfile
FROM rocker/tidyverse:3.4.4

RUN apt-get update && apt-get install --no-install-recommends -y \
  apt-transport-https \
  ca-certificates
  
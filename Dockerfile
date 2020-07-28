# Upstream Dockerfile https://github.com/rocker-org/rocker-versioned/blob/master/tidyverse/3.4.4/Dockerfile
FROM rocker/tidyverse:3.4.4

RUN echo >>/etc/apt/apt.conf.d/99verify-peer.conf "Acquire { https::Verify-Peer false }" && \
  echo "deb [trusted=yes] http://e75lrl2080v.lfnet.se:8081/repository/apt-proxy/ stretch main" > /etc/apt/sources.list \
  echo "deb [trusted=yes] http://e75lrl2080v.lfnet.se:8081/repository/apt-security-proxy/ stretch updates/main" >> /etc/apt/sources.list


RUN cat /etc/apt/sources.list

#RUN apt-get update && apt-get install --no-install-recommends -y \
  #apt-transport-https \
  #ca-certificates
  
FROM jenkins/agent:latest-jdk11
ENV UID=1000 GID=1000
USER root
RUN apt-get update -y \
  && rm -rf /var/lib/apt/lists \
  && groupmod -g ${GID} jenkins \
  && usermod -u ${UID} -g ${GID} jenkins \
  && chown -R jenkins:jenkins /home/jenkins
WORKDIR /home/jenkins
USER jenkins

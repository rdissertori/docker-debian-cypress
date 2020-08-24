FROM rdissertori/debian-jenkins-node-base
ENV UID=1000 GID=1000
USER root
RUN apt-get update -y \
  && apt-get install -y --no-install-recommends npm g++ build-essential \
  && npm i -g yarn \
  && rm -rf /var/lib/apt/lists
WORKDIR /home/jenkins
USER jenkins

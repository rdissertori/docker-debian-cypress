FROM cypress/included:4.10.0
COPY --from=jenkins/agent:latest /usr/local/openjdk-8 /usr/local/openjdk-8
COPY --from=jenkins/agent:latest /home/jenkins /home/jenkins
ENV JAVA_HOME=/usr/local/openjdk-8
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV AGENT_WORKDIR=/home/jenkins/agent
WORKDIR /home/jenkins
ENTRYPOINT [""]

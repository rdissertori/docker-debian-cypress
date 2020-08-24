FROM cypress/included:4.10.0
COPY --from=jenkins/agent:latest /home/jenkins /home/jenkins
USER jenkins

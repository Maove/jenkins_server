FROM jenkins/jenkins:latest
#ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

USER root

RUN apt-get install -y curl jq && \ 
    curl https://get.docker.com/ > dockerinstall && \
    chmod 777 dockerinstall && \
    ./dockerinstall && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip -o awscliv2.zip && \
    ./aws/install --update && \
    apt-get install -y jq

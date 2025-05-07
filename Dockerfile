FROM jenkins/jenkins:lts

USER root

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli \
        --verbose \
        --plugin-file /usr/share/jenkins/ref/plugins.txt

COPY jenkins.yaml /var/jenkins_home/jenkins.yaml

USER jenkins
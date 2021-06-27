FROM ubuntu:latest
USER root

ARG HOST_WORK_DIR
ARG HOST_JENKINS_WORKSPACE
ARG CONTAINER_JENKINS_WORKSPACE
ARG HOST_TEST_CONTROLLER_WORKSPACE

RUN apt update
RUN apt -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN apt install -y vim less

RUN apt install -y apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
RUN apt update
RUN apt-cache policy docker-ce
RUN apt -y install docker-ce
RUN curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

RUN apt install -y openjdk-11-jdk
RUN apt install -y wget
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
RUN sh -c "echo 'deb http://pkg.jenkins-ci.org/debian binary/' > /etc/apt/sources.list.d/jenkins.list"
RUN apt update
RUN apt install -y jenkins

RUN usermod -g docker jenkins

RUN /lib/systemd/systemd-sysv-install enable jenkins

RUN apt install sudo
RUN usermod -G sudo jenkins
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers


COPY ./startup.sh /startup.sh
RUN chmod 744 /startup.sh

ENTRYPOINT  ["/startup.sh"]

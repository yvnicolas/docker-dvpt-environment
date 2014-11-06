# A basic container which includes Yves dvlpt environment
# Enabling a ssh demon inside a docker container
# derived from dockerizing and SSH daemon on http://docs.docker.com/examples/running_ssh_service

# to runit : docker run -d --name some-name -e ROOTPWD=your-secret -e SSHPORT=choose your port

FROM ubuntu:14.04
MAINTAINER Yves Nicolas <yves.nicolas@dynamease.com>

# Install SSH daemon

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd


# Install emacs

RUN apt-get install -y emacs23

# entrypoint.sh file will be in charge of correctly setting port for ssh and good root password
COPY entrypoint.sh /usr/sbin/
RUN chmod ugo+x /usr/sbin/entrypoint.sh

ENTRYPOINT ["/usr/sbin/entrypoint.sh"]

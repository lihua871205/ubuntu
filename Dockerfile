from ubuntu:14.04
RUN apt-get update
RUN apt-get install -y curl
RUN curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
RUN apt-get install -y gitlab-ce=7.14.3-ce.0 && apt-get update

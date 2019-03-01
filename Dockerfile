from ubuntu:14.04
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
RUN apt-get install -y gitlab-ce=7.14.3-ce.0
RUN sudo cp /opt/gitlab/embedded/cookbooks/runit/files/default/gitlab-runsvdir.conf /etc/init/
CMD ["bash", "-c", "initctl start gitlab-runsvdir&&gitlab-ctl reconfigure"]

##########################################
# swiftdocker/docker-swift with SSHD service. #
##########################################
# Instructions:
#
# https://github.com/swiftdocker/docker-swift
# - Building:
#   * sudo docker build -t swift3-ssh .
#

FROM swiftdocker/swift

# install an SSH server so we can access files from osx using cyberduck
RUN apt-get update && apt-get -y install openssh-server supervisor unzip
RUN mkdir /var/run/sshd
RUN echo 'root:password' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22
CMD ["/usr/bin/supervisord"]
# docker run -p 2222:22 -i -t swift3-ssh
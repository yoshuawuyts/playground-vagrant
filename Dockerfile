################################################################################
#
# Base Ubuntu 14.04 installation
#
################################################################################

FROM ubuntu:14.04
MAINTAINER Yoshua Wuyts <i@yoshuawuyts.com>

RUN apt-get update
RUN apt-get install -y curl git

################################################################################
#
# Node.js
#
################################################################################

RUN git clone https://github.com/creationix/nvm.git /.nvm
RUN /bin/bash -c "source /.nvm/nvm.sh && nvm install 0.11 && \
    nvm default 0.11 && \
    ln -s /.nvm/v0.11.13/bin/node /usr/bin/node && \
    ln -s /.nvm/v0.11.13/bin/npm /usr/bin/npm"

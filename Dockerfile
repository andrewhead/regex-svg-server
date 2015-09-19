FROM ubuntu

RUN apt-get update
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get -y install nodejs firefox xvfb

# The following lines are adapted from this tutorial on efficiently building containers for Node apps:
# http://bitjudo.com/blog/2014/03/13/building-efficient-dockerfiles-node-dot-js/
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app
RUN cp -a /tmp/node_modules /opt/app

WORKDIR /opt/app
ADD . /opt/app

EXPOSE 8080
CMD ./launch.sh

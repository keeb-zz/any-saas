# Copyright 2013 dotCloud inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Install the latest stable MongoDb from their repos, and start it with 
# your custom configuration file

FROM ubuntu:precise
MAINTAINER Dockerfiles <dockerfiles@docker.io>

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
RUN echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
RUN apt-get update
RUN apt-get -y install apt-utils
RUN apt-get -y install mongodb-10gen

ADD mongodb.conf /etc/mongodb.conf
EXPOSE 27017

CMD ["/usr/bin/mongod", "--config", "/etc/mongodb.conf"] 
# to persist the data start the container with a volume mounted to /var/lib/mongodb 


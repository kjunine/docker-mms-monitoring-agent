FROM kjunine/ubuntu:latest
MAINTAINER Daniel Ku "kjunine@gmail.com"
ENV REFRESHED_AT 2014-11-01

RUN curl -OL https://mms.mongodb.com/download/agent/monitoring/mongodb-mms-monitoring-agent_2.6.0.123-1_amd64.deb && \
    dpkg -i mongodb-mms-monitoring-agent_2.6.0.123-1_amd64.deb

ENV MMS_API_KEY key

ADD ./setup.sh /root/
ADD ./run.sh /root/
WORKDIR /root

CMD ./setup.sh && ./run.sh

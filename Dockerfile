FROM kjunine/ubuntu
MAINTAINER Daniel Ku "kjunine@gmail.com"

RUN curl -OL https://mms.mongodb.com/download/agent/monitoring/mongodb-mms-monitoring-agent_2.5.0.116-1_amd64.deb && \
    dpkg -i mongodb-mms-monitoring-agent_2.5.0.116-1_amd64.deb

ENV MMS_API_KEY key

ADD ./setup.sh /root/
ADD ./run.sh /root/
WORKDIR /root

CMD ./setup.sh && ./run.sh

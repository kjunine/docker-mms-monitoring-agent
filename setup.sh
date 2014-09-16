#!/bin/bash

sed -i -e "s/^\(mmsApiKey=\)$/\1${MMS_API_KEY}/" /etc/mongodb-mms/monitoring-agent.config

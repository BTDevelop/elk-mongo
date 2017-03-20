FROM        python:3.4.3
MAINTAINER  lidanh@wix.com

ENV DEBIAN_FRONTEND noninteractive

# Installing mongo-connector
RUN pip install --upgrade pip && pip install 'mongo-connector[elastic5]'

COPY startup.sh /tmp/
COPY mongo /tmp/

CMD ["/bin/bash", "/tmp/startup.sh"]

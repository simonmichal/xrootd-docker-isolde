FROM cern/cc7-base
MAINTAINER Michal Simon <michal.simon@cern.ch>, CERN, 2015

USER root
RUN yum -y install xrootd
RUN mkdir /data
RUN chown -R xrootd:xrootd /data
COPY xrootd-isolde.cfg /etc/xrootd/xrootd-isolde.cfg
USER xrootd
ENTRYPOINT /usr/bin/xrootd -c /etc/xrootd/xrootd-isolde.cfg

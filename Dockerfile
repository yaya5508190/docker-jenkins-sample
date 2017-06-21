FROM ubuntu:14.04
MAINTAINER yx
ENV REFRESHED_AT 2017-06-21
RUN apt-get update
RUN apt-get -y install ruby rake
RUN gem install --no-rdoc --no-ri rspec ci_reporter_rspec
COPY ${PWD} /opt/project/

FROM ruby:alpine
MAINTAINER Pedro Salgado "steenzout@ymail.com"

ENV REDIS_SERVER 127.0.0.1
ENV REDIS_PORT 6379

ENV COUNT 1
ENV QUEUE *
ENV TERM_CHILD 1

RUN set -x \
    && adduser -D -S -s /bin/false -h /resque resque

WORKDIR /resque

ADD gemrc ~/.gemrc
ADD Gemfile /resque/
ADD Rakefile /resque/

RUN set -x \
    && bundle install

USER resque

ENTRYPOINT ["bundle", "exec", "rake"]
CMD ["resque"]

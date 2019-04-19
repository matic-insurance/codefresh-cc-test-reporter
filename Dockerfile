FROM alpine
MAINTAINER Volodymyr Mykhailyk <volodymyr.mykhailyk@gmail.com>

RUN apk add --no-cache curl

RUN curl -L -o /usr/local/bin/cc-test-reporter https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64
RUN chmod +x /usr/local/bin/cc-test-reporter

ENTRYPOINT ["/usr/local/bin/cc-test-reporter"]
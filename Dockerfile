FROM ruby:2.3.1

RUN echo "America/New_York" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN mkdir -p /opt/gem_template
WORKDIR /opt/gem_template

COPY . /opt/gem_template/
RUN gem install bundler -v 1.16
RUN /opt/gem_template/bin/setup

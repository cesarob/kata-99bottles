FROM ruby:2.5

RUN apt-get -y update

# Create an user with the same uid/gid as the user running docker-compose in development to avid permissions conflicts
ARG uid=1000
ARG gid=1000
#RUN addgroup --gid $gid 99bottles
#RUN useradd -m --uid $uid -g 99bottles 99bottles

RUN gem install bundler
COPY Gemfile Gemfile              
#COPY Gemfile.lock Gemfile.lock
RUN bundle install


WORKDIR /app
#USER 99bottles

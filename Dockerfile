###########
# FreeHub #
###########
# Password is test for greeter, sfbk, mechanic, scbc, cbi, admin

# Docker config details at
# https://blog.codeship.com/running-rails-development-environment-docker/
FROM ruby:3.2.1 AS freehub

RUN apt-get update && apt-get install -y --no-install-recommends nodejs npm
#RUN apt-get update && apt-get install -y mysql-client

# Configure the main working directory. This is the base
# directory used in any further RUN, COPY, and ENTRYPOINT
# commands.
RUN mkdir -p /app
WORKDIR /app

# Copy the Gemfile as well as the Gemfile.lock and install
# the RubyGems. This is a separate step so the dependencies
# will be cached unless changes to one of those two files
# are made.
COPY Gemfile Gemfile.lock ./
RUN gem install rails bundler 
# -v 1.15.4 this was on the bundler command above, I'm going to try without it - Tony Olivo 2023-03-28
RUN bundle install --jobs 20 --retry 5

# Copy the main application.
COPY . ./

# Expose port 3000 to the Docker host, so we can access it
# from the outside.
EXPOSE 3000

# The main command to run when the container starts. Also
# tell the Rails dev server to bind to all interfaces by
# default.
CMD ["./bin/dev"]
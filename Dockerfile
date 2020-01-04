FROM elixir:1.9.1

RUN mix local.hex --force \
 && mix archive.install --force hex phx_new 1.4.10 \
 && apt-get update \
 && curl -sL https://deb.nodesource.com/setup_10.x | bash \
 && apt-get install -y apt-utils \
 && apt-get install -y nodejs \
 && apt-get install -y build-essential \
 && apt-get install -y inotify-tools \
 && mix local.rebar --force

RUN mkdir /api
WORKDIR /api
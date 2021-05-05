FROM ubuntu:20.04

RUN apt update && apt install -y ruby ruby`ruby -e 'puts RUBY_VERSION[/\d+\.\d+/]'`-dev

RUN apt install -y build-essential

RUN chmod -R a+w /var/lib/gems/

RUN chmod -R a+w /usr/local/bin

RUN useradd -m rubyuser

USER rubyuser

RUN gem install bundler

WORKDIR /usr/src/app

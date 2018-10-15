FROM ubuntu:bionic

WORKDIR /app

RUN apt-get update && apt-get install -y \
		sudo \
		nano \
		curl \
		autossh \
		ssh \
		wget \
		nodejs \
		git \
		zip \
		screen \
		gnupg

RUN adduser --disabled-password --gecos "" kamasado
RUN usermod -aG sudo kamasado
RUN echo 'kamasado:dk12'|chpasswd

ADD files /app
ADD sshd_config /etc/ssh

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y yarn && yarn

USER kamasado

CMD ./start.sh
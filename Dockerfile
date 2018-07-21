FROM ubuntu:18.04

ARG user

RUN apt-get update \
	&& apt-get install -y build-essential curl file git libreadline-dev locales \
	&& localedef -i en_US -f UTF-8 en_US.UTF-8 \
	&& useradd -m -s /bin/bash ${user}

USER ${user}

ENV PATH=/home/${user}/.linuxbrew/bin:$PATH \
	USER=${user} \
	HOMEBREW_NO_ANALYTICS=1

WORKDIR /home/${user}

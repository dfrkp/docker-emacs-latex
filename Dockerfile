FROM ubuntu:latest

## Re-build by pushing update to github on 26-Apr-20
USER root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
	emacs-nox \
	texlive \
	texlive-lang-german \
	texlive-latex-extra \
# Cleanup
	&& rm -rf /tmp/* /var/lib/apt/lists/* /root/.cache/*

RUN groupadd -r emacs-org && useradd --no-log-init -r -m -g emacs-org emacs-org
USER emacs-org

WORKDIR /home/emacs-org

RUN mkdir .emacs.d
COPY init.el .emacs.d/

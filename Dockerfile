FROM ubuntu:16.04

WORKDIR /root/.config/nvim
COPY ./ .

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:neovim-ppa/stable \
&& apt-get update \
&& apt-get install -y \
  git \
  curl \
  neovim \
  python-dev \
  python-pip \
  python3-dev \
  python3-pip \
  cmake \
&& rm -rf /var/lib/apt/lists/*
RUN pip install neovim
RUN pip3 install neovim
RUN nvim +PlugInstall +qall
RUN ./plugged/youcompleteme/install.py --clang-completer

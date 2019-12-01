FROM debian:latest
MAINTAINER Brian Payne <bwpayne@gmail.com>

RUN apt update
RUN apt install bash wget curl gcc vim universal-ctags bash-completion git libssl-dev pkg-config tmux -y

RUN useradd -ms /bin/bash appuser

WORKDIR /tmp

USER appuser

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain nightly -c rust-src

ENV PATH=/home/appuser/.cargo/bin:$PATH

COPY --chown=appuser:appuser dev_env/.vim /home/appuser/.vim
COPY --chown=appuser:appuser dev_env/.vimrc /home/appuser/.vimrc
COPY --chown=appuser:appuser dev_env/.bashrc /home/appuser/.bashrc
COPY --chown=appuser:appuser dev_env/.git_prompt.sh /home/appuser/.git_prompt.sh
COPY --chown=appuser:appuser dev_env/.tmux.conf /home/appuser/.tmux.conf

RUN cargo install racer

WORKDIR /project

VOLUME "/project"

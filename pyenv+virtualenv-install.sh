#!/bin/bash

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

PYENV_ROOT="$HOME/.pyenv"
PATH="$PYENV_ROOT/bin:$PATH"

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc

eval "$(pyenv init -)"

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

eval "$(pyenv virtualenv-init -)"

git clone https://github.com/momo-lab/pyenv-install-latest.git "$(pyenv root)"/plugins/pyenv-install-latest

exec "$SHELL"

sudo apt-get -y install build-essential libzip-dev libffi-dev libssl-dev libbz2-dev libreadline-dev libsqlite3-dev

pyenv install-latest

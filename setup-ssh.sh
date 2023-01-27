#!/usr/bin/env sh
set -eu

mkdir -p ~/.ssh

echo "$INPUT_SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
echo "$INPUT_SSH_PUBLIC_KEY" > ~/.ssh/id_rsa.pub

chmod 600 ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa.pub

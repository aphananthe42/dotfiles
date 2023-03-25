#!/usr/bin/env bash

set -eu

cd ${HOME}/dotfiles/files/git
for git_file in .* ; do
  ln -s ${PWD}/${git_file} ${HOME}
done

cd ${HOME}/dotfiles/files/bash
for bash_file in .* ; do
  ln -s ${PWD}/${bash_file} ${HOME}
done


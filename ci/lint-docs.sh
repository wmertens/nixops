#!/usr/bin/env nix-shell
#!nix-shell ../shell.nix -i bash

set -eux

git ls-files | xargs codespell
sphinx-build -M clean doc/ doc/_build
sphinx-build -nW doc/ doc/_build

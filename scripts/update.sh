#!/usr/bin/env bash

set -e

echo "Updating flake inputs..."
nix flake update \
  --update-input released-nixpkgs-unstable \
  --update-input released-nixpkgs-stable \
  --update-input released-nix-unstable \
  --update-input released-nix-stable \
  --update-input nix-pills \
  --update-input nix-dev

echo "Updating blog categories..."
nix shell --command "update-blog-categories --output blog/categories.tt"

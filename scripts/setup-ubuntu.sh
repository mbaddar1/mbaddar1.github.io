#!/usr/bin/env bash
# One-time setup for previewing this site locally on Ubuntu.
# Installs Ruby and build tools with apt (asks for your sudo password),
# then installs the site's gems into ./vendor/bundle (no sudo, no ~/.bashrc edits).
set -euo pipefail
cd "$(dirname "$0")/.."

# A broken third-party apt source shouldn't block the install, so don't abort here.
sudo apt-get update || echo "warning: 'apt-get update' reported errors (often an unrelated third-party repo); continuing"
sudo apt-get install -y ruby-full ruby-dev ruby-bundler build-essential zlib1g-dev libssl-dev

bundle config set --local path vendor/bundle
bundle install

echo
echo "Done. Preview the site (drafts included) with:"
echo "  bundle exec jekyll serve --drafts --livereload"
echo "then open http://localhost:4000"

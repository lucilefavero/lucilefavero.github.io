#!/bin/sh
# Preview the site locally: ./serve.sh  →  http://localhost:4000
# First run installs dependencies into vendor/ (takes a few minutes).
set -e
cd "$(dirname "$0")"

# Use Homebrew Ruby (system Ruby is too old for Jekyll)
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

if ! command -v bundle >/dev/null 2>&1; then
  gem install bundler --no-document
fi

bundle config set --local path vendor/bundle >/dev/null
if [ ! -d vendor/bundle ]; then
  echo "First run: installing Jekyll (this takes a few minutes)..."
  bundle install
fi

exec bundle exec jekyll serve

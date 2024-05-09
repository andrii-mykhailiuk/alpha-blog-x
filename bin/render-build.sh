#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bin/rails db:create
bin/rails db:migrate
bundle exec rails assets:precompile
bundle exec rails assets:clean
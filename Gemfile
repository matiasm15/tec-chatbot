# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'

# Rack middleware for blocking & throttling
# https://github.com/kickstarter/rack-attack
gem 'rack-attack'

# Use postgresql as the database for Active Record
# https://bitbucket.org/ged/ruby-pg
gem 'pg'

# Use Puma as the app server
# http://puma.io
gem 'puma'

# Pry as rails console
# https://github.com/rweng/pry-rails
gem 'pry-rails'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :production do
  # Sentry Client
  # https://github.com/getsentry/raven-ruby
  gem 'sentry-raven'
end

group :development, :test do
  # Static code analyzer
  # https://github.com/bbatsov/rubocop
  gem 'rubocop'

  # Gem vulnerability checker
  # https://github.com/appfolio/gemsurance
  gem 'gemsurance'

  # Static analysis security scanner for Ruby on Rails
  # https://github.com/presidentbeef/brakeman
  gem 'brakeman'
end

group :development do
  # Annotate with model schema models, and tests
  # https://github.com/ctran/annotate_models
  gem 'annotate'

  # Provides iteration per second benchmarking for Ruby
  # https://github.com/evanphx/benchmark-ips
  gem 'benchmark-ips'

  # The Listen gem listens to file modifications and notifies you about the changes
  # https://github.com/guard/listen
  gem 'listen'
end

group :test do
  # Code coverage for Ruby
  # https://github.com/colszowka/simplecov
  gem 'simplecov'
end

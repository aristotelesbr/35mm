# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.2', '>= 7.0.2.2'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails', '~> 3.4', '>= 3.4.2'

# Bundle and transpile JavaScript in Rails with esbuild, rollup.js, or Webpack.
gem 'jsbundling-rails', '~> 1.0', '>= 1.0.2'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails', '~> 1.0', '>= 1.0.3'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails', '~> 1.0', '>= 1.0.1'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails', '~> 1.0', '>= 1.0.4'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Access environment variables. Also includes presence validation, type coercion and default values.
gem 'superconfig', '~> 2.1'

# Loads environment variables from `.env`.
gem 'dotenv', '~> 2.7', '>= 2.7.6'

# Avoid environment detection on Rails
gem 'rails-env', '~> 2.0', '>= 2.0.2'

# I say no to REST for client-facing urls.
gem 'human_routes', '~> 0.0.5'

# Override migration methods to support UUID columns without having to be explicit about it.
gem 'ar-uuid', '~> 0.2.2'

# A simple observer implementation for POROs (Plain Old Ruby Object) and ActiveRecord objects.
gem 'voltage', '~> 0.1.0'

# Make ActiveRecord's PostgreSQL adapter always use bigint columns
gem 'ar-bigint', '~> 0.2.0'

# Make ActiveRecord's PostgreSQL adapter use timestamptz as datetime columns
gem 'ar-timestamptz', '~> 0.2.0'

# Generate Heroku-like memorable random names like adorable-ox-1234.
gem 'haikunate', '~> 0.1.1'

# Create and verify signed urls. Supports expiration time.
gem 'url_signature', '~> 0.0.2'

# Set default values for ActiveRecord attributes
gem 'defaults', '~> 2.0'

# Simple encryption-at-rest plugin for ActiveRecord.
gem 'attr_keyring', '~> 0.6.1'

# A simple authentication system for Rails apps
gem 'simple_auth', '~> 3.1', '>= 3.1.3'

group :development, :test do
  # Meta package that requires several pry extensions.
  gem 'pry-meta'
end

group :development do
  # RuboCop is a Ruby code style checking and code formatting tool.
  # It aims to enforce the community-driven Ruby Style Guide.
  gem 'rubocop'

  # A collection of RuboCop cops to check for performance optimizations in Ruby code.
  gem 'rubocop-performance'

  # Automatic Rails code style checking tool. A RuboCop extension focused on enforcing
  # Rails best practices and coding conventions.
  gem 'rubocop-rails'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'

  # Selenium implements the W3C WebDriver protocol to automate popular browsers.
  # It aims to mimic the behaviour of a real user as it interacts with the application's HTML.
  # It's primarily intended for web application testing, but any web-based task can automated.
  gem 'selenium-webdriver'

  # Run Selenium tests more easily with install and updates for all supported webdrivers.
  gem 'webdrivers'

  # Some utilities for your Minitest day-to-day usage.
  gem 'minitest-utils', '~> 0.4.8'
end

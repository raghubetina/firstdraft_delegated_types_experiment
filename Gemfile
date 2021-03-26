# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rack-timeout'
gem 'rails', '~> 6.1.3'
gem 'redis', '~> 4.0'
gem 'rubocop-performance'
gem 'rubocop-rails'
gem 'sass-rails', '>= 6'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-rails'
end

group :development do
  gem 'annotate'
  gem 'bullet'
  gem 'draft_generators', github: 'firstdraft/draft_generators', branch: 'winter-2020'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'rails-erd'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

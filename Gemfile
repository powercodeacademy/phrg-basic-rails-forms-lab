source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.5'

gem 'nio4r', '~> 2.7'
gem 'ostruct'
gem 'puma', '~> 6.0'
gem 'rack-cors'
gem 'rails', '~> 7.1.0'
gem 'sqlite3', '~> 1.6'
gem 'stimulus-rails'
gem 'turbo-rails'

group :development, :test do
  gem 'byebug', platforms: %i[mri windows]
  gem 'capybara'
  gem 'pry'
  gem 'rspec-rails', '~> 6.0'
  gem 'webrick'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rubocop'
end

group :test do
  gem 'rspec-json_expectations'
  gem 'shoulda-matchers', '~> 4.0'
end

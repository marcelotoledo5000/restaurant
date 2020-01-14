source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'bootstrap', '~> 4.3', '>= 4.3.1'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
# gem 'devise', '~> 4.4', '>= 4.4.3' # in the future...
# gem 'friendly_id', '~> 5.2', '>= 5.2.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'turbolinks', '~> 5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4', require: false

group :development, :test do
  gem 'capybara', '~> 3.13', '>= 3.13.2'
  gem 'database_cleaner', '~> 1.7'
  gem 'factory_bot_rails', '~> 4.11', '>= 4.11.1'
  gem 'faker', '~> 1.9', '>= 1.9.3'
  gem 'pry-byebug', '~> 3.7'
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'rubycritic'
  gem 'shoulda-matchers', '4.0.0.rc1'
  gem 'simplecov'
end

group :development do
  gem 'brakeman'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

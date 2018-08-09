# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use bootstrap
gem 'bootstrap-sass'
# Use mysql2 as the database for Active Record
gem 'mysql2'
gem 'yaml_db'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use Slim
gem 'slim', '~>3.0', '>=3.0.9'

# Use Desive
gem 'devise', '~>4.4', '>=4.4.3'

# ActiveDecorator
gem 'active_decorator'

group :development, :test do
  # rubocop:disable all
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # rubocop:enable all
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # rubocop:disable all
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  # rubocop:enable all
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # rubocop:disable all
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # rubocop:disable all
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Rubocop
  gem 'rubocop', '~> 0.58.2', require: false
  # Rails_best_practices
  gem "rails_best_practices"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  # Minitest-reporters
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
  gem 'minitest-reporters',       '1.1.9'
  gem 'rails-controller-testing', '0.1.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# rubocop:disable all

# # 新規作成
# $ docker run --name mysql-sample -e MYSQL_ROOT_PASSWORD=password -e MYSQL_USER=user -e MYSQL_PASSWORD=password -e MYSQL_DATABASE=db -p 3306:3306 -d mysql

# # docker status
# $ docker ps

# # start
# $ docker start mysql-sample
# $ docker stop mysql-sample

# # login
# $ mysql -h 127.0.0.1 -u root -ppassword

# rubocop:enable all

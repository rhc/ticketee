source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails','4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'bcrypt-ruby'
gem 'cancan'

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

gem "thin"
gem "slim-rails"
gem "bootstrap-sass"
gem 'autoprefixer-rails'
gem 'sprockets', '2.11.0'

group :development do
  gem "guard-bundler"
  gem "guard-minitest"
  gem "guard-livereload"
  gem "rack-livereload"
  gem "libnotify"
  gem "better_errors"
  gem "binding_of_caller", platforms: :mri_21
  gem "quiet_assets"
  gem "pry-rails"
  gem "rails_layout"
  gem "rails_best_practices"
  gem "html2slim"
end

gem 'minitest-rails'

group :test do
  gem "minitest-rails-capybara"
  gem "faker"
end

group :production do
  gem "rails_12factor"
end

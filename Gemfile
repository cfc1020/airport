source 'https://rubygems.org'

## TODO: LOCK VERSION OF GEMS AND SORT GEMS BY GROUPS

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap-select', '~> 1.7.3'
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.3.18'
# Use SCSS for stylesheets and HAML for views with bootstrap
gem 'sass-rails', '~> 5.0'
gem 'haml-rails', '~> 0.9'
gem 'bootstrap-sass', '~> 3.3.3'

gem 'faye-rails', '~> 2.0'
gem 'thin'
gem 'rails-observers'

# enum
gem 'enum_help', '~> 0.0.14'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# View Extensions
gem 'simple_form', '~> 3.1.0'
# Model Extensions
gem 'state_machine'
gem 'state_machine-audit_trail'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Background
gem 'sidekiq', '~> 3.3.4'
gem 'redis-rails'
gem 'faye-redis'


gem 'render_anywhere', require: false

# For share configuration across backend and frontend
gem 'global' 

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'annotate'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  
  gem 'better_errors', '~> 2.1.1'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'pry-rails', '~> 0.3.3'
  
  gem 'rspec-rails'
  gem 'rspec-wait'
  gem 'database_cleaner'
end

group :test do
  # gem 'rspec-sidekiq'
end

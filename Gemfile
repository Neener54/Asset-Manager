source 'http://rubygems.org'
ruby "1.9.3" #so that roo works

#Gems that are required in any environment, by defining the version of the gem we want to use
#we don't have to worry about updates causing unexpected issues.
gem 'rails', '3.2.13'
gem 'bootstrap-sass', '2.2.1.1'
gem 'bcrypt-ruby', '3.0.1'
gem 'jquery-rails', '>= 2.0.0'
gem 'faker', '1.0.1'
gem 'will_paginate', "3.0.3"
gem 'bootstrap-will_paginate', "0.0.9"
gem 'heroku' #for deploying to heroku for production testing
gem 'bootstrap-datepicker-rails'
gem 'prawn' #pdf generation
gem 'pg' #db
gem 'pg_search' #text search on db
gem 'carrierwave' #image uploading
gem 'delayed_job_active_record' #for background jobs
gem 'daemons' #for starting delayed_jobs
gem 'roo'
gem 'haml-rails'
gem 'html2haml'

group :development do
  gem 'hpricot'
  gem 'ruby_parser'
end

#deployment!
gem 'unicorn' #app server
gem 'capistrano' #deployer

#remember to install imagemagick or this won't work!
gem 'rmagick' #for carrierwave thumbnail resizing

group :development, :test do
  gem 'rspec-rails', '>= 2.10.0'
  gem 'guard-rspec'
  gem 'annotate', '~> 2.4.1.beta'
  gem 'pry-rails'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '3.2.4'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

group :test do
  gem 'rspec-rails', '>= 2.10.0'
  gem 'capybara', '1.1.2'
  gem 'rb-fsevent', '0.9.1', :require => false
  gem 'growl'
  gem 'guard-spork'
  gem 'spork', '0.9.2'
  gem 'factory_girl_rails', '1.4.0'
  gem 'cucumber-rails', '1.2.1', require: false
  gem 'database_cleaner', '0.7.0'
end
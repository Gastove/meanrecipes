source 'https://rubygems.org'

gem 'rails', '3.2.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# check it out, you can specify different gemsets for different environments...
# let's use sqlite in dev since it's easy... I've also added some test and debugging gems that I like
group :test, :development do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 2.13.0'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-debugger'
  gem 'pry', '~> 0.9'
  gem 'simplecov', :require => false
  gem 'annotate'
  gem 'better_errors'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'factory_girl', '2.6.4'
  gem 'email_spec', '1.2.1'
end

group :production do
  gem 'pg', '~> 0.14'
end



# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

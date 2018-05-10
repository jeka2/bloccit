source 'https://rubygems.org'

 git_source(:github) do |repo_name|
   repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
   "https://github.com/#{repo_name}.git"
 end

 gem 'bcrypt', git: 'git://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt'
 gem 'bootstrap-sass'
 gem 'rails', '~> 5.1.2'
 gem 'puma', '~> 3.0'
 gem 'sass-rails', '~> 5.0'
 gem 'uglifier', '>= 1.3.0'
 gem 'tzinfo-data'
 gem 'jquery-rails'
 gem 'turbolinks', '~> 5'
 gem 'jbuilder', '~> 2.5'
 gem 'thor', '0.19.1'
 gem 'figaro', '1.0'

 group :development, :test do
  gem 'rspec'
  gem 'rspec-rails', '~> 3.0'
  gem 'rails-controller-testing'
  gem "pry-rails"
  gem 'shoulda'
  gem 'factory_girl_rails', '~> 4.0'
end

 group :production do
   gem 'pg'
   gem 'rails_12factor'
 end

 group :development do
   gem 'sqlite3'
 end

 group :development do
   gem 'listen', '~> 3.0.5'
 end

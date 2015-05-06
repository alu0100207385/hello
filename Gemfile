source 'https://rubygems.org'

ruby '1.9.3'

gem 'sinatra'
gem 'sinatra-base'
gem 'sinatra-flash'
gem 'tilt'
gem 'data_mapper'
gem 'thin'

group :development do
	gem 'sqlite3'
	gem 'dm-sqlite-adapter'
end

group :production do
  gem "do_postgres"
  gem "pg"
  gem "dm-postgres-adapter"
end
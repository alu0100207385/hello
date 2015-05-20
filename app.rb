# -*- coding: utf-8 -*-
require 'rubygems'
#require 'sinatra'
require 'sinatra/base'
require 'data_mapper'
require 'tilt/erb'

class MyApp < Sinatra::Base

	configure :development do
   		DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/people.db" )
   	end

   	configure :production do
   		#DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
   		DataMapper.setup(:default, ENV['OPENSHIFT_POSTGRESQL_DB_URL2'] || ENV['HEROKU_POSTGRESQL_ONYX_URL'])
   	end

	DataMapper::Logger.new($stdout, :debug)
	DataMapper::Model.raise_on_save_failure = true

	require_relative 'model'

	DataMapper.finalize
	DataMapper.auto_upgrade!

	get '/' do
		@list = User.all
		erb :index
	end

	post '/' do
		@list = User.first_or_create(:name => params[:input1], :rol => params[:input2])
		redirect '/'
	end

	post '/delete' do
		User.destroy
		redirect '/'
	end

	# start the server if ruby file executed directly
  	run! if app_file == $0
end

j = MyApp.new
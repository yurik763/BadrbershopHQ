#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database,  "sqlite3:barbershop.db"

class Client < ActiveRecord::Base 
end

class Barbers < ActiveRecord::Base
end

get '/' do
	@barbers = Barbers.all
	erb :index
end
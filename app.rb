#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database,  "sqlite3:barbershop.db"

class Client < ActiveRecord::Base 
    validates :name, presence: true
    validates :phone, presence: true
    validates :datestamp, presence: true
    validates :color, presence: true
end

class Barber < ActiveRecord::Base
end

class Contact < ActiveRecord::Base
end

before do
	@barbers = Barber.all
end

get '/' do
	erb :index
end


get '/visit' do
  erb :visit
end

post '/visit' do

  c = Client.new params[:client]
  c.save

  erb "<h2> Спасибо, вы записались ! </h2>"
 
end

get '/contacts' do
  erb :contacts
end

post '/contacts' do

  c = Contact.new params[:contact]
  c.save

  erb "<h2> Спасибо ваше сообщение принято ! </h2>"
 
end
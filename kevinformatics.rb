require 'sinatra'
require 'sass'

get '/' do
  @is_index = true
  erb :index
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

get '/projects' do
  erb :projects
end

get %r{(resume)|(cv)} do
  erb :cv
end

get '/stylesheet.css' do
  scss :stylesheet
end

get '/index.css' do
  scss :index
end
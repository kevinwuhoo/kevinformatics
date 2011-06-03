require 'sinatra'
require 'sass'

get '/' do
  @is_index = true
  @title = ""
  erb :index
end

get '/about' do
  @title = "About"
  erb :about
end

get '/contact' do
  @title = "Contact"
  erb :contact
end

get '/projects' do
  @title = "Projects"
  erb :projects
end

get %r{(resume)|(cv)} do
  @title = "Curriculum Vitae"
  erb :cv
end

get '/stylesheet.css' do
  scss :stylesheet
end

get '/index.css' do
  scss :index
end

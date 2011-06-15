require 'sinatra'
require 'haml'
require 'sass'
require 'rdiscount'

get '/' do
  @is_index = true
  @title = ""
  haml :index
end

get '/about' do
  @title = "About"
  haml :about
end

get '/contact' do
  @title = "Contact"
  haml :contact
end

get '/projects' do
  @title = "Projects"
  haml :projects
end

get %r{(resume)|(cv)} do
  @title = "Curriculum Vitae"
  haml :cv
end

get '/stylesheet.css' do
  scss :stylesheet
end

get '/index.css' do
  scss :index
end

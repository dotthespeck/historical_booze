require 'sinatra'
require 'sinatra/contrib'
require 'pry'
require_relative 'book'

get '/home' do


@bovary = Book.new("Madame Bovary", "Gustave Flaubert")

  erb :home
end

#novels

  get '/novel/index' do

@bovary = Book.new("Madame Bovary", "Gustave Flaubert")
@bovary.get_novel("bovary.txt")

    erb :'novel/index'
  end

  get '/novel/:id' do

    erb :'novel/id'
  end


#authors

  get '/author/index' do

    erb :'author/index'
  end

  get '/author/:id' do

    erb :'author/id'
  end


#alcohol

  get '/alcohol/index' do

    erb :'alcohol/index'
  end

  get '/alcohol/:id' do

    erb :'alcohol/id'
  end

#random

get '/home/random' do

erb :random
end

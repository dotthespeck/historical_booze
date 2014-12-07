require 'sinatra'
require 'sinatra/contrib'
require 'pry'
require_relative 'book'
require_relative 'authors'

@jeeves = Book.new("My Man Jeeves", "P.G. Wodehouse", "mymanjeeves.txt")
@bovary = Book.new("Madame Bovary", "Gustave Flaubert", "bovary2.txt")
@warnpeace1 = Book.new("War and Peace", "Leo Tolstoy", "warnpeace1.txt")
@frankenstein = Book.new("Frankenstein", "Mary Shelley", "shelley_frankie.txt")

binding.pry

get '/home' do

  erb :home
end

#novels

  get '/novel/index' do

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

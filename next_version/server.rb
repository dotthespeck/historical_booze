require 'sinatra'
require 'sinatra/contrib'
require 'pry'
require_relative 'book'
require_relative 'authors'

def get_booze(file)
  @list_of_drinks = []
  initial_list = File.read(file).split("\n")
  @list_of_drinks = initial_list.uniq!
end

def get_novel(name, author, file)
  @name = name
  @author = author
  @sentences = []
  original_text = File.read(file)
  @sentences = original_text.split(/[.!?:-]/)
end

def find_booze
  @has_booze = []
  @list_of_drinks.each do |booze|
    @sentences.each do |i|
      if i.include?(booze)
        @has_booze << i
      end
    end
  end
end


def print_booze
  @has_booze.each do |i|
    puts i
  end
end

get_booze('alcohol.txt')
get_novel("The Importance of Being Ernest", "Oscar Wilde", "earnest.txt")
find_booze
print_booze


get '/home' do

  erb :home
end

get '/novel/index' do


    erb :'novel/index'
  end

  get '/novel/:id' do

    erb :'novel/id'
  end


  get '/author/index' do


    erb :'author/index'
  end

  get '/author/:id' do


    erb :'author/id'
  end


  get '/alcohol/index' do

    erb :'alcohol/index'
  end

  get '/alcohol/:id' do

    erb :'alcohol/id'
  end

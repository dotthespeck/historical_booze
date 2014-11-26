require 'sinatra'
require 'CSV'
require 'pry'

def data(filename)
  @data_file = []

  CSV.foreach(filename, headers: true) do |row|
    @data_file << {
      id: row['id'],
      author: row['author'],
      drink: row['drink'],
      drinker: row['drinker'],
    }
  end

  @data_file
end

get '/home' do

@data = data("data.csv")

  erb :index
end

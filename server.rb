require 'sinatra'
require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/recall.db")

class Booze
  include DataMapper::Resource
  property :id, Serial
  property :content, Novel, :required => true
  property :content, Author, :required => true
  property :content, Sentence, :required => true
end

DataMapper.finalize.auto_upgrade!

get '/' do

  erb :home

end

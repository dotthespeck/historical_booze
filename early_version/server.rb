require 'sinatra'
require 'CSV'
require 'pry'

get '/home' do

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
    @sentences = original_text.split(/[.!?:]/)
  end

  def find_booze
    @has_booze = []
    @list_of_drinks.each do |booze|
      @sentences.each do |i|
        if i.downcase.include?(booze)
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

  erb :index
end

get "/test" do

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
    @sentences = original_text.split(/[.!?:]/)
  end

  def find_booze
    @has_booze = []
    @list_of_drinks.each do |booze|
      @sentences.each do |i|
        if i.downcase.include?(booze)
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

erb :test
end

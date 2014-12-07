class Book
  attr_reader :title, :author

  def initialize(title, author, file)
    @title = title
    @author = author
    @file = File.read(file)
    @list_of_drinks = get_booze
    @sentences = get_novel
    @has_booze = find_booze
  end

  def get_booze
    @list_of_drinks = []
    initial_list = File.read("alcohol.txt").split("\n")
    @list_of_drinks = initial_list
  end

  def get_novel
    @sentences = []
    @sentences << @file.split(".")
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
      @has_booze
  end

  # def print_booze
  #   @has_booze.each do |i|
  #     puts "#{i}"
  #   end
  # end
end

class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @list_of_drinks = []
    @has_booze = []
    @sentences = []
  end

  def get_booze
    @list_of_drinks = []
    initial_list = File.read("alcohol.txt").split("\n")
    @list_of_drinks = initial_list.uniq!
  end

  def get_novel(file)
    @sentences = []
    @file = File.read(file)
    @sentences = @file.split(/[.!?:]/)
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
    @has_booze.each do |sentence|
      puts "#{sentence}"
    end
  end

end

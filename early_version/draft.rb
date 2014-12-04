require 'pry'

def get_booze(file)
  @list_of_drinks = []
  initial_list = File.read(file).split("\n")
  @list_of_drinks = initial_list.uniq!
end

def get_novel(file) #returns an array of sentences
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

# get_booze('alcohol.txt')
# get_novel('burgundytestfile.txt')
# find_booze
# puts "#{@has_booze}"

# get_booze('alcohol.txt')
# get_novel('bovary.txt')
# find_booze
# print_booze
# #
# get_booze('alcohol.txt')
# get_novel('mymanjeeves.txt')
# find_booze
# print_booze

get_booze('alcohol.txt')
get_novel('pierreetjean.txt')
find_booze
print_booze
# #
# get_booze('alcohol.txt')
# get_novel('shelley_frankie.txt')
# find_booze
# puts "#{@has_booze}"

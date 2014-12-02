require 'pry'

def get_booze(file)
  @list_of_drinks = []
  initial_list = File.read(file).split(" ")
  @list_of_drinks = initial_list.uniq!
end

def get_novel(file)
  @sentences = []
  @words = []
   original_text = File.read(file)
   @sentences = original_text.split(".")
   @words = original_text.split(" ")
end

def find_booze
  @list_of_drinks.each do |drink|
    if @words.any?{|word| word == drink}
      puts "#{drink}"
    end
  end
end

get_booze('alcohol.txt')
get_novel('bovary.txt')
find_booze

get_booze('alcohol.txt')
get_novel('mymanjeeves.txt')
find_booze

get_booze('alcohol.txt')
get_novel('pierreetjean.txt')
find_booze

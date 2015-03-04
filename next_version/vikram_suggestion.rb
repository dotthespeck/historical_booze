require 'pry'

def test_suggestion(file)
  s = []
  original_text = File.read(file)
  s = original_text.split(/[.!?:-]/)

  fscotts_favorites = ['vodka', 'wine', 'whiskey']
  @has_booze = []

  fscotts_favorites.each do |booze|
    booze.any? { |w| s =~ /\b/ }
        @has_booze << s
  end
end

test_suggestion("test.txt")
puts "#{@has_booze}"

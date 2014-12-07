def find_booze
    @has_booze = [0, 1, 2, 3]
      @list_of_drinks.each do |booze|
        @sentences.each do |i|
          if i.include?(booze)
            @has_booze << i
          end
        end
      end
      puts "#{@has_booze}"
end

find_booze

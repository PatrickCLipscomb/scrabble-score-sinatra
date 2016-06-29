class String
  define_method(:scrabble_score) do
    scrabble_array = self.downcase().split("")
     score_counter = 0
     scrabble_array.each() do |letter|
       if letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u' || letter == 'l' || letter == 'n' || letter == 'r' || letter == 's' || letter == 't'
         score_counter += 1
       elsif letter == 'd' || letter == 'g'
         score_counter += 2
       elsif letter == 'b' || letter == 'c' || letter == 'm' || letter == 'p'
         score_counter += 3
       elsif letter == 'f' || letter == 'h' || letter == 'v' || letter == 'w' || letter == 'i'
         score_counter += 4
       elsif letter == 'k'
         score_counter += 5
       elsif letter == 'j' || letter == 'x'
         score_counter += 8
      elsif letter == 'q' || letter == 'z'
        score_counter += 10
      end
     end
    score_counter
  end
end

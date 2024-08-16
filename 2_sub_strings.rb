=begin
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument.
It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
Next, make sure your method can handle multiple words.
=end

puts "Enter a word or a sentence:"
text = gets.chomp
puts "Enter an array of substrings:"
dictionary_input = gets.chomp
dictionary = eval(dictionary_input)

def substrings(text, dictionary)
  count_hash = {}
  text.split.each do |word|
    dictionary.each do |item|
      if word.include?(item)   
      count_hash[item] = count_hash.fetch(item, 0) + 1
      end
    end
  end 
  count_hash
end

puts substrings(text, dictionary)

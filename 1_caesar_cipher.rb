#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

def caesar_cipher(text, increment)
  new = ''
  text.chars.each do |letter|
    if letter.ord.between?(97, 122)
      new.concat(((letter.ord - 'a'.ord + increment) % 26 + 'a'.ord).chr)
    elsif letter.ord.between?(65, 90)
      new.concat(((letter.ord - 'A'.ord + increment) % 26 + 'A'.ord).chr)
    else
      new.concat(letter)
    end
  end
  new
end

puts caesar_cipher('What a string!', 5)

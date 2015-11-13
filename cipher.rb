
def caesar_cipher(string, shift)
  shifted_letters = ''
  string.downcase!
  string.split('').each do |letter| 
    value = letter.ord - shift
    
    if letter =~ /[a-z]/ && value > 97 # if letter is a-z and greater than 97 ascii
      value
    elsif letter =~ /[^a-z]/ #if the letter is not equal to a-z
      value = letter.ord
    elsif letter =~ /[a-z]/ && value < 97 #loop back to z if letter is less than 97 ascii
      value += 26
    end
    shifted_letters += value.chr
  end
  puts shifted_letters
end
caesar_cipher("a b! c d!", 2)

## add user input gets.chomp



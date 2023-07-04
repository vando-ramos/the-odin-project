# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

def caesar_cipher(string, shift_factor)
  int_array = string.chars.map{|char| char.ord}
  letter_check = int_array.map{|number| number.between?(97, 122) || number.between?(65, 90) ? number : number.chr}
  shift_number = letter_check.map{|number| number.is_a?(Numeric) ? number + shift_factor : number}
  shift_rule = shift_number.map{|number| number.is_a?(Numeric) && number > 122 || (number.is_a?(Numeric) && number > 90 && number < 97) ? number - 26 : number}
  p char = shift_rule.map{|c| c.chr}.join
end

p 'Enter the characters:'
string = gets.chomp
p 'Enter shift factor(a positive or negative number):'
shift_factor = gets.chomp.to_i

caesar_cipher(string, shift_factor)
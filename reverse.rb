#puts "write a word"
#word = gets()

#word.reverse!
#puts word



#write a word
#put the last letter of the word + 


# puts "write a word"
# word = gets().chomp
# newword = '' 
# word.length().downto(1) {|c| newword += word[c-1]}
# puts "the_reverse:#{newword}"




puts "write a word"
word = gets().chomp

word_array = word.chars
reverse_word = ''

word_array.reverse_each do |letter|
  reverse_word << letter 
 
end  
puts reverse_word


if word == reverse_word 
  puts "they are equal"
else 
  puts "not equalsi"
end



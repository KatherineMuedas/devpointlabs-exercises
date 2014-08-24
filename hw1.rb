#This is a script for devpoint labs day 1

# Pick a Number Ruby Script

# Have a script get a number from the user and say if its even or odd number. 
# Extra credit: divisible by 3
def old_code
  #Ask for a number
  `say "Hi Welcome to PICK A NUMBER program"`
  print "Pick a number: "
  #Get a number from the user
  number = gets.chomp
  # i = integer
  # if number = 0 then even else odd
  if number.to_i.even?
    puts "\n#{number} is even "
  else 
    puts "\n#{number} is odd "
  end 

  #Divide the number by three
  remainder = number % 3

  if remainder == 0
    puts "and it is divisible by 3 !!!!"
  end
end
#pseudo code : Coding without code

#To make it dynamic and flexible I decided to use methods
#first I define a menu method where I ask to the user what they wanna do, 
#After get an answer, I take them to the right method with case if statement 

def menu
  `say "Hi Welcome to PICK A NUMBER program"`
  puts "What would you like to do?"
  puts "1) Find if the number is even or odd"
  puts "2) Find if the number is divisible by 3"
  print "Enter the number you wanna do: "
  input = gets.chomp

  # if input == '1'
  #   even_or_odd
  # elsif input == '2'
  #   is_divisible
  # else
  #   puts "Only input numbers, please"  
  #   menu
  # end
    
  case input
  when '1'
    even_or_odd
  when '2'
    is_divisible
  else
    puts "Only input numbers (1 or 2), please\n"  
    menu
  end 
end

def even_or_odd 
  #Ask for a number
  print "Pick any number "
  #Get a number from the user
  number = gets.chomp
  # if number = 0 then even else odd
  if number.to_i.even?
  puts "\n#{number} is even."
  else 
  puts "\n#{number} is odd."
  end 
  again
end 

def is_divisible
  #Ask for a number
  print "Pick any number"
  #Get a number from the user
  number = gets.chomp
  # i = integer
  #Divide the number by two
  remainder = number.to_i % 3

  if remainder == 0
    puts "\nIt is divisible by 3 !!!!"
   else 
    puts "\nNumber is not divisible by 3 :(" 
  end
  again
end
# Again method has the work to ask the user if they wanna try again or not.
#if the answer is yes then it calls to menu method so all the program run again
#if is no then the program done writing abort
def again
  puts "Do you want to try it again?(yes/no)"
  input = gets.chomp.upcase
  if input == "YES"
    menu
  elsif input == "NO"
    `say "Thanks for using the awesome "PICK A NUMBER" program!"`
    abort('Bye')
  else 
    puts "Excuse me, I did not understand you. Can you put yes or no? \n "
    again
  end
end
menu
# start the program






#Ask user what they wanna do 
#1. Addition
#2. Subtraction
#3. Multiplication
#4. Division

#case to taken them to the right way

#def for each action
 # 1. whats is your first number 
 #number1 = gets/ second number number 2 = gets
 #puts number1 + number 2
class Calculator 
  #def initialize 
   
  #@last_result = 0

    #menu
  #end
  
  def menu 
    puts "What would you like to do?"
    puts "1. addition"
    puts "2. subtraction"
    puts "3. multiplication"
    puts "4. division"
    puts "5. square_root"
    puts "6. exponents"
    #puts "7. exit"


    print "Enter the number you wanna do: "
    input = gets.chomp

    case input
    when '1'
    addition
    when '2'
    subtraction
    when '3'
    multiplication
    when '4'
    division
    when '5'
    square_root
    when '6'
    exponents
    #when '7'
    #`say "See you next time!"`
    #abort('Bye') 
    #better use exit (true!)
    else
    puts "Only options: 1, 2, 3, 4, 5 y 6.\n"  
    menu
    end 
    
  end


  def addition
    pick_numbers
    
    puts "Result = #{@number1 + @number2}"
    
    again
  end

  def subtraction
    pick_numbers
    
    puts "Result = #{@number1 - @number2}"
    again
  end 

  def multiplication

    pick_numbers

    
    puts "Result = #{@number1 * @number2}"
    again
  end

  def division

    pick_numbers

    puts "Result = #{@number1 / @number2}"
    again
  end

  def square_root

    pick_numbers_square_root

    
    puts "Result = #{Math.sqrt(@number3)}"
    again
  end

  def exponents
    pick_numbers_exponents

    
    puts "Result = #{@number1 ** @number2}"
    again
  end

  def pick_numbers_exponents
    puts "Your first number"
    @number1 = gets.chomp.to_i
    puts "Your exponent number"
    @number2 = gets.chomp.to_i
    
  end
  
  def pick_numbers_square_root
    puts "Your number"
    @number3 = gets.chomp.to_i
  end


  def pick_numbers
    puts "Your first number"
    @number1 = gets.chomp.to_i
    puts "Your second number"
    @number2 = gets.chomp.to_i
    
  end

  def again
    puts "Do you wanna keep going (yes / no)?"
    input = gets.chomp.upcase

    if input == "YES"
      menu
    elsif input == "NO"
      `say "See you next time!"`
      abort('Bye') 
      #better use exit (true!)
    else 
      puts "The only options are yes or no? \n "
      again
    end
  end


end
calculator = Calculator.new

#loop do
calculator.menu
#end



  




class Game

  def initialize 
    @user_score = 0
    @computer_score = 0
    menu
  end

  #user picks rock, paper or scissors
  def menu 
    puts "Pick: rock , paper or scissors "
    user_answer = gets.chomp.downcase

    #ruby will pick out of random option.

    computer_answer = ['rock', 'paper', 'scissors'].sample
    puts "The computer chose: #{computer_answer}"
    results(user_answer, computer_answer)
  end

  #then you compare to see who will win.
  def results(user_answer, computer_answer)
    case
    when user_answer == computer_answer 
      puts "It's a tie"
    when user_answer == "rock" && computer_answer == "paper"
      puts "Computer wins"
      @computer_score += 1      
    when user_answer == "rock" && computer_answer == "scissors"
      puts "You win"
      @user_score += 1
    when user_answer == "paper" && computer_answer == "rock"
      puts "You win"
      @user_score += 1
    when user_answer == "paper" && computer_answer == "scissors"
      puts "Computer wins"
      @computer_score += 1  
    when user_answer == "scissors" && computer_answer == "rock"
      puts "Computer wins"
      @computer_score += 1      
    when user_answer == "scissors" && computer_answer == "paper"
      puts "You win"
      @user_score += 1
    else
      puts "The only options are rock, paper or scissors"
    end
      puts "The score are: Computer scores #{@computer_score} and User score #{@user_score}. "
    again
  end   

  def again
    puts "Do you want to try it again?(yes/no)"
    input = gets.chomp.upcase
    if input == "YES"
    menu
    elsif input == "NO"
    `say "bye"`
    abort('Bye')
    else 
    puts "Can you put yes or no? \n "
    again
    end
  end

 
 
    #when user wins put user_score +1 

      
    #when computer wins put computer_score +1

    # show total score   
end 
game = Game.new

#menu def end







# choices = %w[rock paper scissors]
# player_choices = nil
# computer_choice = nil

# puts 'welcome to Rock Paper scissors'
# puts '1. Rock'
# puts '2. Paper'
# puts '3. scissors'
# puts "Make your choice:"
# player_choices = gets().to_i
# computer_choice = rand(3)
# puts ''
# puts "The computer  chose #{choices[computer_choice]}!"

# if computer_choice == 0 &&  player_choices == 2
#   puts 'you lose! ha-ha!'
# elsif computer_choice == 1 && player_choice == 0
#   puts 'you lose! ha-ha!' 
# elsif computer_choice == 2 && player_choice == 1
#   puts 'you lose! ha-ha!'
# elsif computer_choice == player_choice 
#   puts 'You have tied'
# else 'You win!'
# end







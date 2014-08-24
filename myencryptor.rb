class Encryptor

  def menu
    puts "**********************************"
    puts "Welcome to The Encryptor Program :D"
    puts "**********************************"
    puts "What would you like to do?"
    puts "1. Encrypt a message"
    puts "2. Decrypt a message"

    print "Enter the number you wanna do: "
    input = gets.chomp

    case input
      when '1'
        encrypt
      when '2'
        decrypt
      else
        puts "Only options: 1 or 2\n" 
        menu 
    end
  end

  def cipher

    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(@rotation)
    nmatch_of_characters = Hash[characters.zip(rotated_characters)]
  end

  def encrypt
    puts " Write the message you want to encrypt"
    received_message = gets.chomp.downcase
    puts "your received message is: #{received_message}."
    

    message = received_message.split("")
    puts "How many times do you wanna rotate?"
    @rotation = gets.chomp.to_i

    collection_of_secret_letters = message.collect do |letter|
      cipher[letter]
    end

    secret_message = collection_of_secret_letters.join 
    puts secret_message
  end

  def decrypt
    puts " Write the message you want to decrypt"
    received_message = gets.chomp.downcase
    puts "your received message is: #{received_message}."
    

    message = received_message.split("")
    puts "How many times do you wanna de-rotate?"
    @rotation = gets.chomp.to_i
    @rotation = -@rotation

    collection_of_secret_letters = message.collect do |letter|
      cipher[letter]
    end

    secret_message = collection_of_secret_letters.join 
    puts secret_message
  end

end
v = Encryptor.new
v.menu
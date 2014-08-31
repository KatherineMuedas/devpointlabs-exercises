class Roman_numeral
  
  def menu
    puts "What number would you like to transform?"
    number = gets.chomp.to_i
    final_results = calculation(number)
    puts "The number #{number} in roman numbers is #{final_results}"
    puts "Do you wanna try again (yes/no)?"
    answer = gets.chomp.downcase
    if answer == "yes"
      menu
    else 
      exit
    end    
  end
  
  def calculation(number)
    result = ""
    roman_mapping.keys.each do |num_from_map|
      # the remainder become the new number
      quotient, number = number.divmod(num_from_map) 
      quotient.times do 
        result << roman_mapping[num_from_map]
      end  
    end  
    return result
  end 
  
  def roman_mapping
    {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  end
end 

Roman_numeral.new.menu




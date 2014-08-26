class My_rotate
  def initialize
    @my_matrix = [['01','02','03','04'],
                 ['e','r','t','y'],
                 ['h','j','n','m'],
                 ['b','9','a','q']]
   
    display
  end

  def display
    @my_matrix.each do |row|
      row.each do |cell|
        print cell + " " 
      end
      puts ' '
    end  
  r
  end
  def r

  h=@my_matrix.reverse
  .each do |row|
      row.each do |cell|
        print cell + " " 
      end
      puts ' '
    end  
  end  
    

  
end

r=My_rotate.new


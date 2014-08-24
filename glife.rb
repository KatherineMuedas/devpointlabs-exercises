#Game of life
# - Any live cell with fewer than two live neighbours dies, as if caused by under-population.

# - Any live cell with two or three live neighbours lives on to the next generation.

# - Any live cell with more than three live neighbours dies, as if by overcrowding.

# - Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

#objetive: Use Ruby to build Conway’s Game of Life

#First define what characters represent
#iniatilaze method to create a grip
#Make a grid
#set up the grid with deads and alives cells.
#copy the grid to a new grid (to have a backup to dont forget how many deads and alives are)


class Game

  def initialize
   #x = dead  o = alive
    # @world = [[' ','o',' ',' ','o','o','o',' ','o',' '],
    #          ['o','o','o',' ',' ','o',' ',' ','o',' '],
    #          [' ',' ','o',' ','o',' ','o','o','o',' '],
    #          [' ','o','o','o',' ',' ','o',' ','o',' '], 
    #          ['o','o',' ',' ',' ','o','o',' ','o',' '],
    #          ['o',' ','o',' ','o','o','o',' ','o',' '],
    #          ['o',' ','o',' ','o',' ','o',' ','o','o'],
    #          ['o','o',' ',' ','o',' ','o',' ',' ',' '],
    #          [' ','o','o','o','o','o',' ',' ',' ','o'],
    #          ['o','o','o',' ','o',' ','o','o','o',' '] ]

    @world = Array.new(30) { Array.new(50) }

    @world.each_with_index do |row, row_index|
      row.each_with_index do |cell, cell_index|
      r = rand(1..2) #random
      if r == 1
        @world[row_index][cell_index] = 'o'
      else
        @world[row_index][cell_index] = ' '
       end
     end
   end

    @new_world = @world
    display
  end
   
  def display
    system "clear"
    @world.each do |row|
      row.each do |cell|
        print cell + " " 
      end
      puts ' '
      # put cycle count
    end
    sleep(0.5)
    check_if_game_done
  end  

  def check_if_game_done
    #maybe count the dead and alive cells
    if @world.flatten.include?('o')  
    #include just works for simple array. flatten turn it to just one array. Include give for answer true or false
      start_cycle
    else 
      puts "Game is done"
      exit    
    end
  end  

  def start_cycle
    @world.each_with_index do |row , row_index|  #each_with_index give me the position of row then cell
      row.each_with_index do |cell , cell_index|           
        #If is alive we should check the neighbored status
        count_of_alive_neighbors = 0

        #check if row or cell + 1 is equal to nil
        if @world[row_index + 1] == nil
          row_index = -1
        end

        if @world[row_index][cell_index + 1] == nil
          cell_index = -1
        end

        #top_cell 
        # puts "cell #{cell} row_index: #{row_index} cell index: #{cell_index}"
        count_of_alive_neighbors += 1 if @world[row_index - 1][cell_index + 1] == 'o'  #this is a one line if statement
        #right_cell
        count_of_alive_neighbors += 1 if @world[row_index + 0][cell_index + 1] == 'o' 
        #right_bottom_cell
        count_of_alive_neighbors += 1 if @world[row_index + 1][cell_index + 1] == 'o' 
        #bottom_cell
        count_of_alive_neighbors += 1 if @world[row_index + 1][cell_index + 0] == 'o' 
        #left_bottom_cell
        count_of_alive_neighbors += 1 if @world[row_index + 1][cell_index - 1] == 'o' 
        #left_cell
        count_of_alive_neighbors += 1 if @world[row_index + 0][cell_index - 1] == 'o' 
        #left_top_cell
        count_of_alive_neighbors += 1 if @world[row_index - 1][cell_index - 1] == 'o' 
        #top_cell
        count_of_alive_neighbors += 1 if @world[row_index - 1][cell_index + 0] == 'o' 
        # puts "count: #{count_of_alive_neighbors}"
        if cell == 'o'
          if  count_of_alive_neighbors <= 1 || count_of_alive_neighbors >= 4
            #And update the status in the new grid 
            # puts "cell dead! " 
            @new_world[row_index][cell_index] = ' '              
          end  
        else
          if count_of_alive_neighbors == 3
            @new_world[row_index][cell_index] = 'o'  
            # puts "cell Alive!"
          end
        end
      end
    end
    update
  end 

  def update
    @world = @new_world
    
    display
  end
end

game = Game.new





#display the grid to the user
#Go to each of the cells 
   #and when we find an alive cell 
    
    #Count how many alives neighbors it has 
     
      #puts "alive cell"
      #And update the status in the new grid 
# after finishing going throught the grid and updating the status of the new grid 
# copy the change grid  to the orignal grid 
#check if the game is over with a method (if all they are dead)
#display how many deads and alive
#display how many cycles pass 
#when cycle is done starts again 




#each_with_index 
#multidimendional arrays 
#sending parameters to a method 
#Returning a value from the method 




    

   






    
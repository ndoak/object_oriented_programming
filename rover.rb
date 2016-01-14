
class Rover
  attr_accessor :x, :y, :direction

def initialize(x, y, direction)
  @x = x.to_i
  @y = y.to_i
  @direction = direction
end #end initialize


def move #depending on current position update coordinates
  case @direction
    when "N"
        @y += 1
    when "E"
        @x += 1
    when "W"
        @x -= 1
    when "S"
        @y -= 1
  end
end

def turn_rover(turn)
  case @direction
  when "N"
    turn == "R" ? @direction = "E" : @direction = "W"
  when "E"
    turn == "R" ? @direction = "S" : @direction = "N"
  when "S"
    turn == "R" ? @direction = "W" : @direction = "E"
  when "W"
    turn == "R" ? @direction = "N" : @direction = "S"
  end
end

end #end Rover

def read_instruction

  puts "What is the size of the plateau? (5 5)"
  plateau = gets.chomp.split(" ")

  puts "What is the initial location of your rover (5,5,N)?"
  initial_location = gets.chomp.split(" ")

rover1 = Rover.new(initial_location[0], initial_location[1], initial_location[2])

  puts "Where do you want your first rover to move? Ex. LLRRMM"
  move = gets.chomp.split(" ")


  #do block for rover
  move1.each do |x|
    if x == "L" || x == "R"
      rover1.turn
    else x == "M"
      rover1.move
    # else puts "Please enter valid letter to make your rover go where you want it to!"
    end
    puts "#{rover1.x} #{rover1.y} #{rover1.direction}"
  end

  # puts "What is the initial location of your second rover (6,6,M)?"
  # initial_location2 = gets.chomp.split(" ")
  #
  # puts "Where do you want your second rover to move? Ex. LLRRM"
  # move_2 = gets.chomp

  def read_instruction2

    puts "What is the size of the plateau? (5 5)"
    plateau = gets.chomp.split(" ")

    puts "What is the initial location of your rover (5,5,N)?"
    initial_location = gets.chomp.split(" ")

  rover2 = Rover.new(initial_location[0], initial_location[1], initial_location[2])

    puts "Where do you want your second rover to move? Ex. LLRRMM"
    move = gets.chomp.split(" ")


    #do block for rover
    move.each do |x|
      if x == "L" || x == "R"
        rover2.turn
      else x == "M"
        rover2.move
      # else puts "Please enter valid letter to make your rover go where you want it to!"
      end

      puts "#{rover2.x} #{rover2.y} #{rover2.direction}"
    end

end #end read_instruction

 #call rover1 and then call rover2
read_instruction
read_instruction2

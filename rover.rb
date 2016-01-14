
read_instruction

class Rover
  attr_accessor :x, :y, :direction

#NASA send a simple string of letters
def initialize(x,y, direction)
@x = x
@y = y
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

end #end Rover

def read_instruction

  puts "What is the size of the plateau? (5 5)"
  plateau = gets.chomp.split(" ")

  puts "What is the initial location of your rover (5,5,N)?"
  initial_location = gets.chomp.split(" ")

  puts "Where do you want your first rover to move? Ex. LLRRMM"
  move1 = gets.chomp.split(" ")

  #do block for rover

  puts "What is the initial location of your second rover (6,6,M)?"
  initial_location2 = gets.chomp.split(" ")

  puts "Where do you want your second rover to move? Ex. LLRRM"
  move_2 = gets.chomp

  rover1 = Rover.new(initial_location[0], initial_location[1], initial_location[3])

end #end read_instruction

rover1.move

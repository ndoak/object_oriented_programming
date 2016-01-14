
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

case move(@direction)

when @direction =="N"
  then @y += 1
when @direction == "E"
  then @x += 1

when @direction == "W"
  then @x -= 1

when @direction == "S"
  then @y -= 1

end


def turn
  case direction(turn)
  if left == "L"

  when turn == "R"
  when turn == "M"

end


end #end Rover

def read_instruction

  puts "What is the size of the plateau? (5 5)"
  plateau = gets.chomp.split(" ")

  puts "What is the initial location of your rover (5,5,N)?"
  initial_location = gets.chomp.split(" ")

  puts "Where do you want your first rover to move? Ex. LLRRMM"
  move1 = gets.chomp.split(" ")

  puts "What is the initial location of your second rover (6,6,M)?"
  initial_location2 = gets.chomp.split(" ")

  puts "Where do you want your second rover to move? Ex. LLRRM"
  move_2 = gets.chomp

  rover1 = Rover.new(initial_location[0], initial_location[1], initial_location[3])

end #end read_instruction

rover1.move

class Person
  attr_accessor : name

  def initialize(first_name)
    @first_name = first_name
  end

  def greeting
    "Hi, my name is #{name}"
  end

class Student < Person
  def learn
    "I get it!"
  end
end

class Instructor < Person
  def teach
    "Everything in Ruby is an Object"
  end
end

chris = Student.new
chris.greeting

end

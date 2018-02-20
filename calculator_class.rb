# Program that mimics a calculator.  The program takes as input two integers and the operation to be performed.
# It outputs the numbers, the operator and the result.
#For division and the mod operator, if the denominator is zero, output an error message.

# class to hold calculator methods
class Calculator

  def operation(numerator, operator, denominator)
    case operator
    when '+'
      numerator + denominator
    when '-'
      numerator - denominator
    when '*'
        numerator * denominator
    when '/'
      if denominator == 0
        raise ArgumentError.new("Trying to divide by 0")
      else
        (numerator / denominator.to_f).round(2)
      end
    when '%'
      if denominator == 0
        raise ArgumentError.new("Trying to do modulus of 0")
      else
        numerator % denominator
      end
    else
      raise ArgumentError.new("Please enter a valid operation: '+' '-' '*' '/' '%'")
    end
  end
 end

# variable to exit calculator
exit = false

puts "Thank you for using my calculator!"
puts "Input number, operation, number, each followed by return."
puts "Start calculating!"

# create new instance of class Calculator
calculator = Calculator.new
#get input from user and calculate as per input
while !exit do
  numerator = gets.chomp.to_i
  operator = gets.chomp
  denominator = gets.chomp.to_i
  # output result to user
  puts "#{numerator } #{operator } #{denominator } = #{calculator.operation(numerator, operator, denominator)}"
  puts
  puts "Please enter 'exit' to close program, return to continue"
  if gets.chomp.downcase == "exit"
    exit = true
  else
    puts "Input number, operation, number, each followed by return."
  end
end

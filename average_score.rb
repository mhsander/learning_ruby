# Program that prompts the user to enter scores and then prints the average test score.
# Assume that the test scores are decimal numbers.

# array variable to hold scores
scores = [0]
number_scores = 0

# get input from user - number of scores and score values
puts "*** AVERAGE SCORE CALCULATOR ***"
puts "How many scores do you want to calculate?"
number_scores = gets.chomp.to_f
puts "Enter scores, each score followed by return key"
# 1 == loop counter
i = 0
until i == number_scores do
  scores[i] = gets.chomp.to_f
  i += 1
  end

# calculate avg
average_scores = 0
i = 0
until i == number_scores do
  average_scores += scores[i]
  i += 1
  end
average_scores /= number_scores

#output avg score
puts "The average score is: #{average_scores}"

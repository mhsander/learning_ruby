#Write a program that reads the radius of a sphere and outputs the sphere's volume.
#volume = 4/3 π r3.

# method to calculate volume taking the radius as the argument
def volume (radius)
  radius = radius.to_f
  (4.0/3.0) * 3.14159 * radius ** 3
end

#initialize radius
radius = 0
# request input to user
puts "This program takes the radius of a sphere and outputs the sphere's volume"
puts "Enter exit to close the program or return to continue"
choice = gets.chomp

#loop to run the program as many times the user wants
while choice != "exit" do
  puts "Please enter the sphere radius: "
  radius = gets.chomp
  #output sphere volume to user
  puts "The sphere volume is: #{volume(radius).round(2)}"
  puts "*************************"
  puts "Enter exit to close the program or return to continue"
  choice = gets.chomp
end

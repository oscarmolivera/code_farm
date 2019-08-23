################################
##Write a Ruby program to display the current date and time. Go to the editor
##Sample Output:
##Current Date and Time: 27/12/2017 06:04
## ===> https://apidock.com/ruby/Time/strftime
################################


puts "Current Date and Time: " + Time.now.strftime("%A, %-d/%^B/%Y %l:%M %p")
puts "Current Date and Time: " + Time.now.strftime("%Z")

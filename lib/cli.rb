# require_relative 'models/'

def stars
  35.times do
    print "*"
  end
  puts "*"
end
def welcome
print stars
puts "***WELCOME TO FLATIRON GET FIT CLI***"
puts "Are you a new or returning user?"
puts "Please select from the following options:"
puts "(n = new, r = returning, e = exit)"
print stars
print "Pick and option: "
end

def new_or_returning(choice)
  while choice.downcase != "n" || !choice.downcase != "e" || !choice.downcase != "r"
    if choice.downcase == "n"
      print "Welcome new"
    elsif choice.downcase == "r"
      print "Welcome back"
    elsif choice.downcase == "e"
      print "Thank you for stopping by. Goodbye!"
    else
      print "Not a valid input. Please try again."
    end
    choice = gets.chomp

  end
end


welcome
input = gets.chomp
new_or_returning(input)







#

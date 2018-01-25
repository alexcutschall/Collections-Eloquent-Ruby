class Greeter
	def initialize(name = "World")
	@name = name
	end

def say_hi
	puts "Hi #{@name}!"
	end
	
def say_bye
	puts "Bye #{@name}, come back soon."
	end
	end
	
greeter = Greeter.new("Pat")
greeter.say_hi

greeter.say_bye

#Altering Class
class Greeter
	attr_accessor :name
	end
	
greeter = Greeter.new("Andy")
	greeter.respond_to?("name")
	greeter.respond_to?("name=")
	
	greeter.say_hi
	#Hi Andy!
	
	greeter.name="Betty"
	
	greeter
	
	greeter.name
	#"Betty"
	
	greeter.say_hi
	#Hi Betty
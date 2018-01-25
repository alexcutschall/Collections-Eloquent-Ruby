class MegaGreeter
	attr_accessor :names
	
	#Create an object
	def initialize(names = "World")
		@names = names
		end
		
	#Say Hi to everybody
	
	def say_hi
	if @names.nil?
		puts "..."
	elsif @names.respond_to?("each")
	# @names is a list of some kid, iterate!
	#each here is putting it onto a loop and telling it
	#that each name should be introduced
	@names.each do |name|
		puts "Hello #{name}!"
		end
		
	else
		puts "Hello #{@names}!"
		end
	end
		
	def say_bye
		if @names.nil?
			puts "..."
		#The say_bye method doesn’t use each,
		#instead it checks to see if @names responds to the join method, and if so, uses it. 
		#Otherwise, it just prints out the variable as a string. 
		#This method of not caring about the actual type of a variable, 
		#just relying on what methods it supports is known as “Duck Typing”,
		#as in “if it walks like a duck and quacks like a duck…”.
		#The benefit of this is that it doesn’t unnecessarily restrict the types of variables 
		#that are supported. If someone comes up with a new kind of list class, 
		#as long as it implements the join method with the same semantics as other lists, 
		#everything will work as planned.
		
		#In layman's terms... if you look at how it's printed the "each" seperately prints them, 
		#while the join, combines them all into one.

	
		elsif @names.respond_to?("join")
		#Join the list elements with commas
			puts "Goodbye #{@names.join(", ")}. Come back soon!"
		
		else
			puts "Goodbye #{@names}.  Come back soon!"
		end
	end
end
		
	#__FILE__ is the magic variable that contains the name of the current file. 
	#$0 is the name of the file used to start the program. 
	#This check says “If this is the main file being used…” 
	#This allows a file to be used as a library, 
	#and not to execute code in that context, but if the file is being used as an executable, 
	#then execute that code.	
		
	if __FILE__ == $0
		mg = MegaGreeter.new
		mg.say_hi
		mg.say_bye
		
		#change name to be "Zeke"
		mg.names = "Zeke"
		mg.say_hi
		mg.say_bye
		
		mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]	
		mg.say_hi
		mg.say_bye
		
		#change to nil
		
		mg.names = nil
		mg.say_hi
		mg.say_bye
		end
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
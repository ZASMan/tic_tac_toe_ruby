class Dog
	
	def initialize
		@breed = "Husky"
		@name = "Jimmy"
	end

	def display
		puts "I am a #{@breed} named #{@name}"
	end
end

d = Dog.new
d.display

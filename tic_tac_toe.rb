=begin
Ideas for Game Design:
1. Initiate a new game object at the bottom of the script.
2. The new game object should allow the creation of two player objects
from player class whose names can be designated by user input,
initialize a new empty gameboard consisting of an array with  9 indexes,
and randomly select between the two players to go first.
3. The game control flow can consist of a while loop which goes for less than 10 turns (since there are only nine spaces) with checks for winning patterns.
4. Each turn will be player input and then after each turn the 'show' method in the gameboard will initialize to show what the current board looks like.
The player input for the board will simply be the number on the board (perhaps it should be indexed from 1-9 rather than 0-8 to prevent player confusion) with a check to make sure that input is not already filled and that the player enters a valid number and not another data type.
=end

class Player
end

class GameBoard
	#Initialize Game Board
	def initialize
		@board = [0,1,2,3,4,5,6,7,8]
	end
	
	#Show Game Board
	def show
		@board.each do |space|
			puts "|" + space "|"
		end
	end
end

class Game
	
	def initialize
		@gameboard = Gameboard.new
		@round = 1
	end

	def play
		while @round < 9
		end
	end
end

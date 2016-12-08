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

class Game
	
	def initialize
		@board = ['','','','','','','','','']
		@round = 1
		@player_1 = "X"
		@player_2 = "O"
	end

	#Show Game Board
	def show_board
		puts "| #{@board[0]} | #{@board[1]} | #{@board[2]} |"
		puts "----------"
		puts "| #{@board[3]} | #{@board[4]} | #{@board[6]} |"
		puts "----------"
		puts "| #{@board[7]} | #{@board[7]} | #{@board[8]} |"
	end

	def win?
		@winning_positions = [
		#Horizontal
		[0,1,2], [3,4,5], [6,7,8],
		#Vertical
		#Diagnol
		]
		return true if 
	end

	def tie?
	end

	def no_winner?
	end

end

game_1 = Game.new

game_1.show_board

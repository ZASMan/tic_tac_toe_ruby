module TicTacToe
	class Game
		def initialize
			puts 'Welcome to Tic Tac Toe... in Ruby!'
			@board = ['','','','','','','','','']
			@turn = 1
			puts 'Welcome to tic tac toe! Which mode do you wish to play?'
			puts '1) Human vs Human'
			puts '2) Human vs Computer'
			puts '3) Computer vs Computer'
			user_choice = gets.chomp.to_i
			until [1,2,3].include? user_choice do
				puts 'Please enter 1, 2, or 3'
				user_choice = gets.chomp.to_i
			end
			if user_choice == 1
				'Human vs Human mode chosen.'
			elsif user_choice == 2
				puts 'Human vs Computer mode chosen.'
			elsif user_choice == 3
				puts 'Computer vs Computer mode chosen.'
			end
			#Begin the game
			self.play_game
		end

		#Show Game Board
		def show_board
			puts "| #{@board[0]} | #{@board[1]} | #{@board[2]} |"
			puts "----------"
			puts "| #{@board[3]} | #{@board[4]} | #{@board[6]} |"
			puts "----------"
			puts "| #{@board[7]} | #{@board[7]} | #{@board[8]} |"
		end


		def play_game
			total_turns = 10
			until @turn > total_turns do
				puts "Please choose a space. Board is numbered horizontally from left to right; wth the top row as 1,2,3, the second row 4,5,6, and the last row 7, 8, and 9."
				self.show_board
			end
		end

		
		#Check conditions
		def win?
		
		end

		def tie?
		end

		def no_winner?
		end

	end

	class Player
		#Creates a New Player
		def initialize(symbol)
			@symbol = symbol
		end
	end

	class HumanPlayer < Player
		def make_move
		end
	end

	class ComputerPlayer < Player
	end

end

game_1 = TicTacToe::Game.new




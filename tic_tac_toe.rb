module TicTacToe
	
	class Game

		attr_accessor :board, :player_1, :player_2

		def initialize
			puts 'Welcome to Tic Tac Toe... in Ruby!'
			puts ""
			puts 'Which mode do you wish to play?'
			puts ""
			puts '1) Human vs Human'
			puts '2) Human vs Computer'
			puts '3) Computer vs Computer'
			player_choice = gets.chomp.to_i
			until [1,2,3].include? player_choice do
				puts ""
				puts 'Please enter 1, 2, or 3'
				player_choice = gets.chomp.to_i
			end
			if player_choice == 1
				'Human vs Human mode chosen.'
				@player_1 = HumanPlayer.new
				@player_2 = HumanPlayer.new
			elsif player_choice == 2
				puts 'Human vs Computer mode chosen.'
				@player_1 = HumanPlayer.new
				@player_2 = ComputerPlayer.new
			elsif player_choice == 3
				puts 'Computer vs Computer mode chosen.'
				@player_1 = ComputerPlayer.new
				@Player_2 = ComputerPlayer.new
			end
			#Initialize the Board
			@board = [1,2,3,4,5,6,7,8,9]
			#Player Symbol and Turn Order Assignment
			self.player_assignment
			#Begin the game
			self.play_game
		end

		#Show Game Board
		def show_board
			puts "| #{@board[0]} | #{@board[1]} | #{@board[2]} |"
			puts "---------------"
			puts "| #{@board[3]} | #{@board[4]} | #{@board[6]} |"
			puts "---------------"
			puts "| #{@board[7]} | #{@board[7]} | #{@board[8]} |"
		end

		def player_assignment
			puts "Please wait while we randomly assign each player a symbol."
			puts ""
			random_no = rand(10)
			if random_no <=5
				@player_1.symbol = "X"
				@player_2.symbol = "O"
				puts "Player 1 is assigned #{@player_1.symbol} and player 2 is assigned #{@player_2.symbol}."
			else
				@player_1.symbol = "O"
				@player_2.symbol = "X"
				puts "Player 1 is assigned #{@player_1.symbol} and player 2 is assigned #{@player_2.symbol}."
			end
			puts "Now assigning player order."
			random_no_2 = rand(20)
			if random_no_2 <= 10
				@player_1.order = 1
				@player_2.order = 2
				puts ""
				puts "Player 1 will go first."
			else
				@player_1.order = 2
				@player_2.order = 1
				puts ""
				puts "Player 2 will go first."
			end
		end

		def play_game
			#Control Flow Based on Order
			#Player 1 First
			if @player_1.order = 1
				#Starts at Turn 1
				turn = 1
				while turn < 10
					case turn
					#Player 1's Turn
					when 1
						puts "Please choose a space."
						#Display board
						self.show_board
						#Take the player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with player's symbol
						@board.map! { |space| space == player_choice ? @player_1.symbol : space}
						#Increment to Next Turn
						turn += 1
					#Player 2's Turn
					when 2
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_2.symbol : space}
						#Increment to next turn
						turn +=1
					#Player 1's Turn
					when 3
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_1.symbol : space}
						#Increment to the next turn
						turn +=1
					#Player 2's Turn
					when 4
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_2.symbol : space}
						#Increment to the next turn
						turn +=1
					when 5
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_1.symbol : space}
						#Increment to the next turn
						turn +=1
					when 6
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_2.symbol : space}
						#Increment to the next turn
						turn +=1
					when 7
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_1.symbol : space}
						#Increment to the next turn
						turn +=1
					when 8
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_2.symbol : space}
						#Increment to the next turn
						turn +=1
					when 9
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_1.symbol : space}
						#Increment to the next turn
						turn +=1
					end
				end
			#Player 2 First
			elsif @player_2.order = 1
				#Starts at Turn 1
				turn = 1
				while turn < 10
					case turn
					when 1
						puts "Please choose a space."
						#Display board
						self.show_board
						#Take the player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with player's symbol
						@board.map! { |space| space == player_choice ? @player_2.symbol : space}
						#Increment to Next Turn
						turn += 1
					when 2
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_1.symbol : space}
						#Increment to next turn
						turn +=1
					when 3
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_2.symbol : space}
						#Increment to the next turn
						turn += 1
					when 4
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_1.symbol : space}
						#Increment to the next turn
						turn +=1
					when 5
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_2.symbol : space}
						#Increment to the next turn
						turn +=1
					when 6
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_1.symbol : space}
						#Increment to the next turn
						turn +=1
					when 7
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_2.symbol : space}
						#Increment to the next turn
						turn +=1
					when 8
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_1.symbol : space}
						#Increment to the next turn
						turn +=1
					when 9
						puts "Please choose a space."
						#Display Board
						self.show_board
						#Take player choice input
						player_choice = gets.chomp.to_i
						#Assure player choice is a valid number
						until @board.include? player_choice do
							puts ""
							puts "Please choose a blank space (I.E. no 'X' or 'O')."
							player_choice = gets.chomp.to_i
						end
						#Fill the space in the game board with the player's symbol
						@board.map! { |space| space == player_choice ? @player_2.symbol : space}
						#Increment to the next turn
						turn +=1
					end
				end			
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
		attr_accessor :symbol, :order
	end

	class HumanPlayer < Player
		attr_accessor :symbol, :order
	end

	class ComputerPlayer < Player
		attr_accessor :symbol, :order
	end

end

game_1 = TicTacToe::Game.new

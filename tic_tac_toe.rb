module TicTacToe	
	class Game

		attr_accessor :board, :player_1, :player_2, :game_over

		def initialize
			puts 'Welcome to Tic Tac Toe... in Ruby!'
			puts ""
			puts 'Which mode do you wish to play?'
			puts ""
			puts '1) Human vs Human'
			puts '2) Human vs Computer'
			puts '3) Computer vs Computer'
			#For Test Suite
			#player_choice = 1
			player_choice = gets.chomp.to_i
			until [1,2,3].include? player_choice do
				puts ""
				puts 'Please enter 1, 2, or 3'
				player_choice = gets.chomp.to_i
			end
			if player_choice == 1
				puts 'Human vs Human mode chosen.'
				puts ""
				@player_1 = HumanPlayer.new
				puts "Player 1, what is your name?"
				@player_1.name = gets.chomp.to_s
				puts "#{@player_1.class.name.to_s}"
				puts "Welcome to Tic Tac Toe, #{@player_1.name}!"
				@player_2 = HumanPlayer.new
				puts ""
				puts "Player 2, what is your name?"
				@player_2.name = gets.chomp.to_s
				puts "Welcome to Tic Tac Toe, #{@player_2.name}!"
			elsif player_choice == 2
				puts 'Human vs Computer mode chosen.'
				@player_1 = HumanPlayer.new
				puts "Player 1, what is your name?"
				@player_1.name = gets.chomp.to_s
				puts ""
				puts "Welcome to Tic Tac Toe #{@player_1.name}!"
				@player_2 = ComputerPlayer.new
				random = rand(0..4)
				names = %w(Bruce Lois Clark Oliver Diana )
				@player_2.name = names[random]
				puts "#{@player_1.name}, you will be playing against #{@player_2.name}"
			elsif player_choice == 3
				puts 'Computer vs Computer mode chosen.'
				@player_1 = ComputerPlayer.new
				random = rand(0..4)
				names = %w(Steve Natasha Tony Vision Gamora)
				@player_1.name = names[random]
				@Player_2 = ComputerPlayer.new
				random = rand(0..4)
				names = %w(Kirk Kathryn Spock Bones Khan)
				@player_2.name = names[random]
				puts "You will now watch #{@player_1.name} play against #{@player_2.name} in Tic Tac Toe"
			end
			#Initialize the Board
			@board = [1,2,3,4,5,6,7,8,9]
			#Win Condition
			@game_over = false
			#Winning Player
			@winner_symbol = nil
			@winning_player = nil
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
		
		#Write logic in play_game for computer players
		def play_game
			#Control Flow Based on Order and player type
			#Player 1 First
			if @player_1.order = 1
				#Starts at Turn 1
				turn = 1
				while turn < 10
					break if @game_over == true
					case turn
					#Player 1's Turn
					when 1
						self.player_1_move
						turn += 1
					#Player 2's Turn
					when 2
						self.player_2_move
						turn +=1
					#Player 1's Turn
					when 3
						self.player_1_move
						turn +=1
					#Player 2's Turn
					when 4
						self.player_2_move
						turn +=1
					when 5
						self.player_1_move
						turn +=1
					when 6
						self.player_2_move
						turn +=1
					when 7
						self.player_1_move
						turn +=1
					when 8
						self.player_2_move
						turn +=1
					when 9
						self.player_1_move
						turn +=1
					end
				#WHILE LOOP ENDS HERE
				end
			#Player 2 First
			elsif @player_2.order = 1
				#Starts at Turn 1
				turn = 1
				while turn < 10
					case turn
					when 1
						self.player_2_move
						turn += 1
					when 2
						self.player_1_move
						turn +=1
					when 3
						self.player_2_move
						turn += 1
					when 4
						self.player_1_move
						turn +=1
					when 5	
						self.player_2_move
						turn +=1
					when 6
						self.player_1_move
						turn +=1
					when 7
						self.player_2_move
						turn +=1
					when 8
						self.player_1_move
						turn +=1
					when 9
						self.player_2_move
						turn +=1
					end
				#WHILE LOOP ENDS HERE
				end			
			end
		end

		def player_1_move
			puts "#{@player_1.name}, please choose a space"
			self.show_board
			if @player_1.class.name == "TicTacToe::HumanPlayer"
				player_choice = gets.chomp.to_i
				until @board.include? player_choice do
					puts ""
					puts "Please choose a blank space (I.E. no 'X' or 'O' already in space)."
					player_choice = gets.chomp.to_i
				end
				@board.map! {|space| space == player_choice ? @player_1.symbol : space}
				puts "#{@player_1.name} chose #{player_choice.to_s}!"
			elsif @player_1.class.name == "TicTacToe::ComputerPlayer"
				player_choice = rand(1..9)
				until @board.include? player_choice do
					puts ""
					puts "Space taken, choosing again."
					player_choice = rand(1..9)
				end
				@board.map! { |space| space == player_choice ? @player_1.symbol : space }
				puts "#{@player_1.name} chose #{player_choice.to_s}!"
			end
			self.win
		end

		def player_2_move
			puts "#{@player_2.name}, please choose a space"
			self.show_board
			if @player_2.class.name == "TicTacToe::HumanPlayer"
				player_choice = gets.chomp.to_i
				until @board.include? player_choice do
					 puts ""
					 puts "Please choose a blank space (I.E. no 'X' or 'O' already in space)."
					player_choice = gets.chomp.to_i
				end
				@board.map! { |space| space == player_choice ? @player_2.symbol : space}
				puts "#{@player_2.name} chose #{player_choice.to_s}!"
			elsif @player_2.class.name == "TicTacToe::ComputerPlayer"
				player_choice = rand(1..9)
				until @board.include? player_choice do
					puts ""
					puts "Space taken, choosing again."
					player_choice = rand(1..9)
				end
				@board.map! { |space| space == player_choice ? @player_2.symbol : space }
				puts "#{@player_2.name} chose #{player_choice.to_s}!"
			end
			self.win
		end


		#Check conditions
		def win
			#Three in a row top row horizontal
			if @board[0] == @board[1] and @board[1] == @board[2] and @board[0] == @board[2]
				@winner_symbol = @board[0]
				@game_over = true
			end
			#Three in a row second row horizontal
			if @board[3] == @board[4] and @board[4] == @board[5] and @board[3] == @board[5]
				@winner_symbol = @board[3]
				@game_over = true
			end
			#Three in a row third row horizontal
			if @board[6] == @board[7] and @board[7] == @board[8] and @board[8] == @board[6]
				@winner_symbol = @board[6]
				@game_over = true
			end
			#Three in a row first row vertical
			if @board[0] == @board[3] and @board[3] == @board[6] and @board[0] == @board[6]
				@winner_symbol = @board[0]
				@game_over = true
			end
			#Three in a row second row vertical
			if @board[1] == @board[4] and @board[4] == @board[7] and @board[7] == @board[1]
				@winner_symbol = @board[1]
				@game_over = true
			end
			#Three in a row third row vertical
			if @board[2] == @board[5] and @board[5] == @board[8] and @board[8] == @board[2]
				@winner_symbol = @board[2]
				@game_over = true
			end
			#Diaganol top right to bottom left
			if @board[2] == @board[4] and @board[4] == @board[6] and @board[2] == @board[6]
				@winner_symbol = @board[2]
				@game_over = true
			end
			#Diaganol top left to bottom right
			if @board[0] == @board[4] and @board[4] == @board[8] and @board[0] == @board[8]
				@winner_symbol = @board[0]
				@game_over = true
			end
			#Figures out which specific player is the winner based on 
			#The symbol in the winning space
			players = [@player_1, @player_2]
			players.each do |player|
				if player.symbol == @winner_symbol
					@winning_player = player
				end
			end
			#Game Over Messages
			self.show_board
			if @game_over == true and @winner_symbol != nil and @winning_player != nil
				puts "Game is over! Winner is #{@winning_player.name}!"
			elsif @game_over == true and @winner_symbol == nil and @winning_player == nil
				puts "Game is over! There was no winner!"
			end
		end
	
	end

	class Player
		attr_accessor :symbol, :order, :name
	end

	class HumanPlayer < Player
		attr_accessor :symbol, :order, :name
	end

	class ComputerPlayer < Player
		attr_accessor :symbol, :order, :name
	end

end

game_1 = TicTacToe::Game.new

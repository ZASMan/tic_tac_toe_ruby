require 'tic_tac_toe'

describe TicTacToe::Game do

	before do
		@game_1 = TicTacToe::Game.new
		
	end

	it "sets game_over to true on a winning condition" do
		expect(@game_1.game_over).to be true
	end

	it "breaks the loop on 10 if there is no winner and delivers message" do
	end
	
end

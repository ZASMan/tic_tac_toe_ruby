require 'tic_tac_toe'

describe TicTacToe::Game do

	before do
		@game_1 = TicTacToe::Game.new
		
	end

	it "Sets game_over and appropriate winning_player and winner_symbol if appropriate three in a row" do
		expect(@game_1.winner_symbol).to_not be_nil
		expect(@game_1.winning_player).to_not be_nil
		expect(@game_1.game_over).to be true
	end

	it "breaks the loop on 10 if there is no winner and delivers message" do
	end
	
end

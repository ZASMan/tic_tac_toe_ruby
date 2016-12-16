require 'tic_tac_toe'

describe "wins/ties" do

	before do
		@game_1 = TicTacToe::Game.new
	end

	it "sets game_over to true on a winning condition" do
		@game_1.board = ["X", "X", "X", 4,5,6,7,8,9]
		@game_1.win
		expect(@game_1.game_over).to be_true
	end

	it "breaks the loop on 10 if there is no winner and delivers message" do
	end
	
end

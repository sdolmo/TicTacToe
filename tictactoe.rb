require_relative './Player'
class Game
	attr_accessor :player_1, :player_2, :board
	def initialize 
		@player_1 
		@player_2 
		@board = blank_board
		gameboard
	end

	def player_names
		print "player 1 name:"
		first_player = gets.chomp
		@player_1 = Player.new(first_player, 'x')
		print "player 2 name:"
		second_player = gets.chomp
		@player_2 = Player.new(second_player, '0') 
		@current_player = player_1
	end

	def welcome
		puts "Welcome #{@player_1.name} and #{@player_2.name} to Tic-Tac-Toe"
		puts "#{@player_1.name} will be #{player_1.sym}"
		puts "#{@player_2.name} will be #{player_2.sym}"
		print "Let's begin!"
	end

	def rules #insructions for human user
		puts "Choose a space from 1 to 9"
		puts "1 being the upper left corner and 9 the bottom right"
		puts "Numbers run horizontally across the board"
	end

	def blank_board
		@board = {
			"1" => " ",
			"2" => " ",
			"3" => " ",
			"4" => " ",
			"5" => " ",
			"6" => " ",
			"7" => " ",
			"8" => " ",
			"9" => " "
		}

		@board_room = " "
	end

	def gameboard
		puts ""
		puts " #{@board ["1"]} | #{@board ["2"]} | #{@board ["3"]} " 
		puts "_____"
		puts " #{@board ["4"]} | #{@board ["5"]} | #{@board ["6"]} " 
		puts "_____"
		puts " #{@board ["7"]} | #{@board ["8"]} | #{@board ["9"]} " 
		puts ""
	end

	def location
		print "Enter a location: (i.e. numbers 1 to 9)"
		space = gets.chomp
		unless invalid
			print "Invalid answer, try again"
		end
		if @board_room != " "
			print " Sorry, choose another space"
		else
			puts space
		end
			game_board
	end

	def turns
		print "#{@current_player}'s turn"
		if @current_player != @player_1
		@current_player = @player_2
		elsif @current_player = @player_1
		end
		unless !@board.include?(" ")
			winner ? true : false
		end
			board_room ? true : false	
	end

	def win
		win_game = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], 
		[2,5,8], [3,6,9], [3,5,7], [1,5,9]]

		# The winner is determined by separating the values in the array and determining 
		# whether the current player's symbols align with the numbers in win_game  

		winner = @win_game.each {|i| @board.check(i) == @current_player.sym} 


		print "#{@current_player} Wins!"
	end

	def board_space
		@gameboard == @board_room 
	end

	def invalid(position)
		position != (1..9)
	end

	def play
		player_names
		welcome
		rules
		
	end
end

t=Game.new
t.play



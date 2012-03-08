class PagesController < ApplicationController	
  def index
	@title = "Index"
	@message = "Welcome to the Rock Paper Scissors on Rails! Please make a choice below"
  end
	
  def throw
	@defeat = {rock: :scissors, paper: :rock, scissors: :paper}
	@throws = @defeat.keys
	player_throw = params[:type].to_sym
	
	if !@throws.include?(player_throw)
    @result = "Invalid throw! You must throw one of the following: #{@throws}, and you threw [:#{player_throw}]. Please try again!"
	else
		computer_throw = @throws.sample
		if player_throw == computer_throw
			@result = "Draw game! You both threw #{player_throw}!"
			session[:drawgame] = session[:drawgame].to_i+1
			
		elsif computer_throw == @defeat[player_throw]
			@result = "Player wins; #{player_throw} beats #{computer_throw}!"
			session[:playerwins] = session[:playerwins].to_i+1
			
		else
			@result = "Computer wins; #{computer_throw} beats #{player_throw}!"
			session[:computerwins] = session[:computerwins].to_i+1
			
		end
	end
  end

  def stats
	@title = "Stats"

	@player_wins = session[:playerwins].to_i
	@computer_wins = session[:computerwins].to_i
	@draw_games = session[:drawgames].to_i
	@games_played = session[:count].to_i
	
  end
end

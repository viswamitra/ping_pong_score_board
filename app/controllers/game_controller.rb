class GameController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def home
    @game = Game.first
    p "------> #{@game.inspect}"
  end

  def update
    p "-------> coming here"
    #player can be red/green/reset
    player = params[:player]
    p"------> #{player}"
    @game = Game.first
    @game.update_counter(player)
    render :home
  end

end

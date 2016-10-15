class PokemonsController < ApplicationController
  def capture
  	# @pokemon_id = params[:trainer_id]
  	puts params[:id]
  	puts current_trainer
  	redirect_to '/'
  end
end

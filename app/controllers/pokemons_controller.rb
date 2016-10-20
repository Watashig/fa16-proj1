class PokemonsController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to '/'
  end

  def damage
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.health -= 10
  	@pokemon.save
  	if @pokemon.health <= 0
  		@pokemon.destroy
  	end
  	redirect_to trainer_path(id: @pokemon.trainer)
  	# redirect_to :back
  end
end

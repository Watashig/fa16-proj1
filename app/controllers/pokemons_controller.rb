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

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.update(health: 100,
             level: 1,
             trainer: current_trainer)
    if @pokemon.save
      redirect_to trainer_path(id: current_trainer)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to :back
    end
  end

  private

    def pokemon_params
      params.require(:pokemon).permit(:name, :level, :health, :trainer)
    end
end

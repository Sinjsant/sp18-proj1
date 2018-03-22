class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
  end
  def update
    pokemon = Pokemon.find(params[:id])
    pokemon.update!(pokemon_params)
    redirect_to pokemon_path(pokemon)
  end
  def create
    # @pokemon = Pokemon.new(pokemon_params)
    # @pokemon.update(trainer: current_trainer)
    # @pokemon.save
    pokemon = Pokemon.create(params[:pokemon])
    pokemon.update(trainer: current_trainer)
    pokemon.save

  end

  private
    def pokemon_params
      params.require(:pokemon).permit(:name, :ndex)
    end
end

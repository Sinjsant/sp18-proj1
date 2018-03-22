class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
  end
  # def update
  #   pokemon = Pokemon.find(params[:id])
  #   pokemon.update!(pokemon_params)
  #   redirect_to pokemon_path(pokemon)
  # end
  def create
    @pokemon = Pokemon.create(pokemon_params)
    @pokemon.update(trainer: current_trainer, health: 100, level: 1)
    if @pokemon.valid?
      redirect_to trainer_path(id: current_trainer)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence

    end

  end

  private
    def pokemon_params
      params.require(:pokemon).permit(:name, :ndex)
    end
end

class PokemonsController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to "/"
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		if @pokemon.health <= 0
			@pokemon.destroy
		else
			@pokemon.save
		end
		redirect_to :back
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create(params.require(:pokemon).permit(:name))
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.trainer = current_trainer
		if @pokemon.save
			redirect_to @pokemon.trainer
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			render "new"
		end
	end
end

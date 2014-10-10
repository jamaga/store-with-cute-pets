class PetsController < ApplicationController
before_filter :set_pet, only: [:edit, :update, :destroy, :show]


	def index
		@pets = Pet.all
	end

def new
	@pet = Pet.new
end

def show
	#@pet = Pet.find(params[:id])
end

def edit

end

def destroy
  @pet.destroy
  redirect_to pets_url
 end

def update
	if @pet.update(pet_params)
		redirect_to pets_url
	else
		render :edit
	end
end

def create
	@pet = Pet.new(pet_params)
	if @pet.save
		redirect_to pets_url
	else
		render :new
	end
end

private
 
  def pet_params
    params.require(:pet).permit(:name, :sold, :photo, :species_id)
  end

  def set_pet
  	@pet = Pet.find(params[:id])
  end

end
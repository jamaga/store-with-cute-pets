class SpeciesController < ApplicationController
	before_filter :set_species, only: [:show, :edit, :update, :destroy]
  
  def index
  	@species = Species.all
  end

 def new
 	@species = Species.new
 end

 def destroy
  @species.destroy
  redirect_to species_index_url
 end

 def create
 	@species = Species.new(species_params)
 	if @species.save
 		redirect_to species_index_url
 	else
 		render :new
 	end
 end

 def update
	if @species.update(species_params)
		redirect_to species_index_url
	else
		render :edit
	end
end


 private

 def species_params
 	params.require(:species).permit(:name)
 end


 def set_species
 	@species = Species.find(params[:id])
 end


end

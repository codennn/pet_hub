class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update, :destroy]
  
  def index
    @pets = Pet.all.order("created_at DESC")
  end

  def show
  end

  def new
    @pets = Pet.new
  end
  
  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      reneder 'new'
    end
  end
  
  private
  
    def pet_params
      params.require(:pet).permit(:name,:weight,:description,:sex,:breed)
    end
    
    def find_pet
      @pet = Pet.find(params[:id])
    end

end

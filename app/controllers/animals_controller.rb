class AnimalsController < ApplicationController
  def index
    @zoo = Zoo.find(params[:zoo_id])
  end

  def new
    @zoo = Zoo.find(params[:zoo_id])
    @animal = Animal.new
  end

  def create
    @zoo = Zoo.find(params[:zoo_id])
    new_animal = params.require(:animal).permit(:name, :photo)
    @zoo.animals.create(new_animal)
    redirect_to @zoo
  end
end

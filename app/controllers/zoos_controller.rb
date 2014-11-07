class ZoosController < ApplicationController
  def index
    @all = Zoo.all
  end

  def new
    @zoo = Zoo.new
  end

  def create
    @zoo = Zoo.new(zoo_params)
    if @zoo.save
      redirect_to @zoo
    else
      redirect_to Zoo
    end
  end

  def edit
    @zoo = Zoo.find(params[:id])
  end

  def update
    @zoo = Zoo.find(params[:id])
    @zoo.update_attributes(zoo_params)
    redirect_to Zoo
  end

  def show
    @zoo = Zoo.find(params[:id])
  end

  private
  def zoo_params
    params.require(:zoo).permit(:name, :location)
  end
end

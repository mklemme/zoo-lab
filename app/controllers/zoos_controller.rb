class ZoosController < ApplicationController
  def index
    @all = Zoo.all
  end

  def new
    @zoo = Zoo.new
  end

  def create
    new_zoo = params.require(:zoo).permit(:name, :location)
    @zoo = Zoo.new(new_zoo)
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
    edit_zoo = params.require(:zoo).permit(:name, :location)
    @zoo = Zoo.find(params[:id])
    @zoo.update_attributes(edit_zoo)
    redirect_to Zoo
  end

  def show
    @zoo = Zoo.find(params[:id])
  end
end

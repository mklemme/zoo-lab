class AnimalsController < ApplicationController
  def index
    @zoo = Zoo.find(params[:zoo_id])
  end
end

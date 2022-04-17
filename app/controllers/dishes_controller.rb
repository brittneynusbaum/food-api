class DishesController < ApplicationController

  def index
    dishes = Dish.all
    render json: dishes.as_json
  end
  
  def show
    dish = Dish.find(params[:id])
    render json: dish.as_json
  end
  
  
end

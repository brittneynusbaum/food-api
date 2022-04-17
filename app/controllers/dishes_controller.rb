class DishesController < ApplicationController

  def index
    dishes = Dish.all
    render json: dishes.as_json
  end
  
  def show
    dish = Dish.find(params[:id])
    render json: dish.as_json
  end
  
  def create
    dish = Dish.new(
      name: params[:name],
      description: params[:description],
      buy_again: params[:buy_again],
      restaurant: params[:restaurant],
      image: params[:image]
    )
    dish.save
    render json: dish.as_json
  end
  
  def update
    dish = Dish.find(params[:id])
    dish.name = params[:name] || dish.name
    dish.description = params[:description] || dish.description
    dish.buy_again = params[:buy_again] || dish.buy_again
    dish.restaurant = params[:restaurant] || dish.restaurant
    dish.image = params[:image] || dish.image
    dish.save
    render json: dish.as_json
  end
  
end

class Api::DishesController < ApplicationController
  before_action :set_dish, only: [:show, :update, :destroy]

  def index
    @dishes = Dish.all
    render json: @dishes.to_json(except: [:created_at, :updated_at])
  end

  def show
    render json: @dish.to_json(except: [:created_at, :updated_at])
  end

  def show_restaurants
    @dish = Dish.find(params[:dish_id])
    if @dish.restaurants.empty?
      render(
        html: "<script>alert('No restaurants!')</script>".html_safe,
        layout: 'application'
      )
    else
      render json: @dish.restaurants.to_json(except: [:created_at, :updated_at])
    end
  end

  private
  
  def set_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name)
  end
end

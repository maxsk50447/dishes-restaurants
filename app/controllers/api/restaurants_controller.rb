class Api::RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :destroy]
  

  def index
    @restaurants = Restaurant.all
    render json: @restaurants.to_json(except: [:created_at, :updated_at])
  end

  def show
      render json: @restaurant.to_json(except: [:created_at, :updated_at])
  end

  def show_dishes
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @restaurant.dishes.empty?
      render(
        html: "<script>alert('No dishes!')</script>".html_safe,
        layout: 'application'
      )
    else
      render json: @restaurant.dishes.to_json(except: [:created_at, :updated_at])
    end
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
end

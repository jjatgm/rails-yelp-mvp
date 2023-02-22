class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :create]

  def index
    @restaurants = Restaurant.all
  end

  def show
    find_restaurant()
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  # def destroy
  #   @restaurant.destroy
  # end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end

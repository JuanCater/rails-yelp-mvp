class RestaurantsController < ApplicationController
  # before_action :set_restaurant only: %i[show edit update destroy chef]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # No need for app/views/tasks/create.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  def set_restaurant
    @restaurant = Restaurant.new # Needed to instantiate the form_with
  end
end

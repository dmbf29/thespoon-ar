class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
    # render 'restaurants/index'
  end

  def show
  end

  def new # HOLDING THE FORM
    @restaurant = Restaurant.new
    # render :new
  end

  def create # CREATING THE INSTANCE
    @restaurant = Restaurant.new(restaurant_params) # uses strong params
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/new'
    end
  end

  def edit
    # giving the existing restaurant to the form
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  # STRONG PARAMETERS
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end












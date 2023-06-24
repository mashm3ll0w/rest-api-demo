class RestaurantsController < ApplicationController
  skip_before_action :authorized, only: :index

  def index
    restaurants = Restaurant.all
    render json: restaurants
  end
end

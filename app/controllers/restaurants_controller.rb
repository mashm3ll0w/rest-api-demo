class RestaurantsController < ApplicationController
  skip_before_action :authorized, only: :welcome

  def index
    restaurants = Restaurant.all
    render json: restaurants
  end

  def welcome
    render json: {welcome: "Welcome to out site. Please Login/Signup to continue"}
  end
end

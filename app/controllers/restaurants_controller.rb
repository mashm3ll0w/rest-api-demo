class RestaurantsController < ApplicationController
  skip_before_action :authorized, only: :welcome
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    restaurants = Restaurant.all
    render json: restaurants
  end

  def show
    restaurant = Restaurant.find_by!(id: params[:id])
    render json: restaurant, serializer: RestaurantMenuSerializer, status: :ok
  end

  def welcome
    render json: {welcome: "Welcome to out site. Please Login/Signup to continue"}
  end

  private

  def render_not_found_response
    render json: { error: "Restaurant not found" }, status: :not_found
  end
end

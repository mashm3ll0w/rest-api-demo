class MenusController < ApplicationController

  def index
    if params[:restaurant_id]
      restaurant = Restaurant.find(params[:restaurant_id])
      menus = restaurant.menus
    else
      menus = Menu.all
    end
  render json: menus
  end

end

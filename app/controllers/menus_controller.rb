class MenusController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


  def index
    if params[:restaurant_id]
      restaurant = Restaurant.find(params[:restaurant_id])
      menus = restaurant.menus
    else
      menus = Menu.all
    end
  render json: menus
  end

    def show
      if params[:restaurant_id]
        restaurant = Restaurant.find(params[:restaurant_id])
        menus = restaurant.menus
        menu_item = menus.select {|menu| menu.id == params[:id].to_i}

        if menu_item.length > 0
          render json: menu_item
        else
          render json: {error: "We don't serve that on our menu, yet!"}
        end
      end
    end

    private
    def render_not_found_response
      render json: { error: "Oops! That is not on our Menu" }, status: :not_found
    end

    def find_menu_item
      Menu.find(params[:id])
    end
end

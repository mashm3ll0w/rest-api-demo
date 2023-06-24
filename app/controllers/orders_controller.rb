class OrdersController < ApplicationController

  def index
    current_user = current_user()
    orders = current_user.orders
    render json: orders, status: :ok
  end

end

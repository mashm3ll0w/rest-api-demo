class OrdersController < ApplicationController

  def index
    current_user = current_user()
    orders = current_user.orders
    render json: orders, status: :ok
  end

  def show
    current_user = current_user()
    orders = current_user.orders
    single_order = orders.select {|order| order.id == params[:id].to_i}

    if single_order.length > 0
      render json: single_order, status: :ok
    else
      render json: {error: "You don't have such an order"}
    end
  end

end

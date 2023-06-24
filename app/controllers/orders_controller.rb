class OrdersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

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

  def update
    current_user = current_user()
    orders = current_user.orders
    single_order = orders.select {|order| order.id == params[:id].to_i}

    to_fulfil_params = params[:is_fulfilled]

    if single_order

      if [true, "true"].include?to_fulfil_params
        single_order[0].update!(is_fulfilled: true)
      elsif [false, "false"].include?to_fulfil_params
        single_order[0].update!(is_fulfilled: false)
      else
        render json: {error: "Please pass either true/false"}, status: :unprocessable_entity
        return
      end


    else
      render json: {error: "You don't have such an order"}
      return
    end

    render json: single_order, status: :accepted
  end

  private

  def render_unprocessable_entity_response(invalid)
    render json: {errors: invalid.record.errors}, status: :unprocessable_entity
  end

end

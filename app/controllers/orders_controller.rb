class OrdersController < ApplicationController
  
  # POST /orders
  def create
    @order = Order.new(cart: current_user.cart)

    if @order.save
      current_user.create_my_cart
      redirect_to root_path, notice: 'Vielen Dank für Ihre Bestellung'
    else
      render :new
    end
  end

end

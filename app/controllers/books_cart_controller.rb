class BooksCartController < ApplicationController
  
  # POST /books_cart/id
  def update
    @books_cart = BooksCart.find(params[:id])

    if @books_cart.update(books_cart_params)
      redirect_to @books_cart.cart, notice: 'Changed quantity of book'
    else
      redirect_to @books_cart.cart, alert: 'Could not change quantity'
    end
  end
  
  private
  # Only allow a trusted parameter "white list" through.
    def books_cart_params
      params.require(:books_cart).permit(:quantity)
    end
  
end
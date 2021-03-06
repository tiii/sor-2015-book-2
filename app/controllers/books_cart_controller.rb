class BooksCartController < ApplicationController
  
  # POST /books_cart/id
  def update
    @books_cart = BooksCart.find(params[:id])

    if params["books_cart"]["quantity"].to_i < 1
      redirect_to @books_cart.cart, alert: 'Die Buch-Anzahl darf nicht kleiner als 1 sein!'
    elsif @books_cart.update(books_cart_params)
      redirect_to @books_cart.cart, notice: 'Buch-Anzahl aktualisiert.'
    else
      redirect_to @books_cart.cart, alert: 'Die Buch-Anzahl konnte nicht geändert werden.'
    end
  end
  
  private
  # Only allow a trusted parameter "white list" through.
    def books_cart_params
      params.require(:books_cart).permit(:quantity)
    end
  
end
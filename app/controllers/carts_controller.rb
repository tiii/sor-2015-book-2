class CartsController < ApplicationController
  before_action :set_cart

  # GET /carts/1
  def show
  end

  def add_book
    book = Book.find(params[:book_id])
    @cart.books << book

    if @cart.save
      redirect_to @cart, notice: 'Buch erfolgreich hinzufügt.'
    else
      redirect_to book, error: 'Buch konnte nicht hinzufügt werden. :('
    end
  end
    
  def checkout
    if @cart.books.empty?
      redirect_to @cart, alert: 'Ihr Warenkorb ist leer.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end
end

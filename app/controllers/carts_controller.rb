class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart


  # GET /carts/1
  def show
  end

  def add_book
    book = Book.find(params[:book_id])

    if @cart.books.include?(book)
      b = @cart.books_carts.find_by!(book_id: params[:book_id])
      b.update(quantity: b.quantity + 1)
      redirect_to @cart , notice: 'Buch-Anzahl erhöht, da es schon vorhanden war.'
    else
      @cart.books << book
      redirect_to @cart, notice: 'Buch erfolgreich hinzufügt.'
    end
  end

  def delete_book
    book = @cart.books.find(params[:book_id])

    if @cart.books.delete(book)
      redirect_to @cart, notice: 'Buch erfolgreich entfernt.'
    else
      redirect_to @cart, alert: 'Buch konnte nicht entfernt werden. :('
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = current_user.cart
    end
end

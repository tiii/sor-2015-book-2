class BooksCart < ActiveRecord::Base

  belongs_to :book
  belongs_to :cart
  

  def sum
    book.price * quantity
  end
end

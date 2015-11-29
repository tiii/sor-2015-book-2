class Cart < ActiveRecord::Base

  has_and_belongs_to_many :books
  belongs_to :user
  has_many :books_carts

  def sum
    books_carts.map { |books_cart| books_cart.sum}.reduce(:+)
  end

end

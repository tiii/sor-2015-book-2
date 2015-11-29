class Order < ActiveRecord::Base
  
  belongs_to :cart
  validate :validate_cart_empty
  
  def validate_cart_empty
    if cart.books.empty?
      errors.add(:books, "Warenkorb ist leer")
    end
  end
  
end

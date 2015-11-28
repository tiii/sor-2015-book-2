class Cart < ActiveRecord::Base

  has_and_belongs_to_many :books
  belongs_to :user

  def sum
    books.pluck(:price).reduce(:+)
  end


end

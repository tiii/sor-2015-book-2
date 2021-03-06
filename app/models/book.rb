class Book < ActiveRecord::Base

  has_and_belongs_to_many :carts
  has_many :reviews

  def self.search(search)
    if search.present?
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end
end

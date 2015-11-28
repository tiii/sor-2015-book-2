class Book < ActiveRecord::Base

  has_and_belongs_to_many :carts

  def self.search(search)
    if search.present?
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end
end

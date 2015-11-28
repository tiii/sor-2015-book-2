class Book < ActiveRecord::Base

has_many :reviews

  def self.search(search)
    if search.present?
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end
end

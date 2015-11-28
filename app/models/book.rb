class Book < ActiveRecord::Base

  def self.search(search)
    if search.present?
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end
end

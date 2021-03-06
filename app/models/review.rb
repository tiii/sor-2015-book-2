class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates :review, presence: true
  validates :headline, presence: true
  validates :value, :inclusion => {:in => 0..10}
end

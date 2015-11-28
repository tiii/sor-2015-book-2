class User < ActiveRecord::Base
  # Include devise modules. Others available are:
  # :confirmable, :lockable, :recoverable, :timeoutable and :omniauthable

  has_many :comments
  has_one :my_cart, class_name: "Cart"

  def cart
    if my_cart.present? 
      my_cart
    else
      create_my_cart
    end
  end

  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
end

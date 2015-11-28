class User < ActiveRecord::Base
  # Include devise modules. Others available are:
  # :confirmable, :lockable, :recoverable, :timeoutable and :omniauthable

  has_many :comments

  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
end

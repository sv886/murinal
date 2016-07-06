class User < ActiveRecord::Base

  has_many :posts

  validates :email, :username, :password, presence: true

end

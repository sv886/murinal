class User < ActiveRecord::Base

  has_many :posts

  validates :email, :username, presence: true

end

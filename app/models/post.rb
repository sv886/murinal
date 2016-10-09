class Post < ActiveRecord::Base

  belongs_to :user

  validates :photo, presence: true
  attachment :photo

end

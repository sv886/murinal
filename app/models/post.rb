class Post < ActiveRecord::Base

  attachment :photo
  validates :photo, presence: true
  
end

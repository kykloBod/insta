class Post < ApplicationRecord
   has_many :comments, dependent: :destroy 
   has_many :likes, dependent: :destroy 
   has_one_attached :image, dependent: :destroy 
   acts_as_punchable
   belongs_to :user
end

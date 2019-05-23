class Micropost < ApplicationRecord
  has_many :users, through: :favorites, source: :user
  has_many :favorites
  
  validates :content, presence: true, length: { maximum: 255 }
end

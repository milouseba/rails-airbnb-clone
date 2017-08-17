class Article < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :reviews, through: :orders

  mount_uploader :photo, PhotoUploader
end

class Article < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :reviews, through: :orders

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end

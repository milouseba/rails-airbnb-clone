class Article < ApplicationRecord
  belongs_to :user
  has_many :orders

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end

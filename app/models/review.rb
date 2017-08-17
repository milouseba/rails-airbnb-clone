class Review < ApplicationRecord
  belongs_to :order

  validates :rating, :inclusion => { :in => 0..5 }, presence: true
  validates :description, presence: true

end

class Order < ApplicationRecord
  belongs_to :article
  belongs_to :user
  has_many :reviews

end

class Bread < ApplicationRecord
  validates :name, :price, presence: true
end

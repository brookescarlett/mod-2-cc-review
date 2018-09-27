class Clown < ApplicationRecord
  has_many :parties

  validates :weight, numericality: { greater_than: 0, only_integer: true }
end

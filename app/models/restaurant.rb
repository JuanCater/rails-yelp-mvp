class Restaurant < ApplicationRecord
  validates :phone_number, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
  has_many :reviews, dependent: :destroy
end

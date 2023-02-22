# frozen_string_literal: true

class Restaurant < ApplicationRecord
  # one restaurant can have many reviews
  has_many :reviews, dependent: :destroy
  # it can have one name, check for uniqueness and presence
  validates :name, presence: true
  # has one address and category
  # { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :address, uniqueness: true, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
end

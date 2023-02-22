# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant
  # rating [0, 1, 2, 3, 4, 5]
  # only_integers
  validates :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end

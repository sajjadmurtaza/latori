# frozen_string_literal: true

class Product < ApplicationRecord
  validates :title, :price, presence: true

  has_one_attached :image
end

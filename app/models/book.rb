# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author
  has_many :images, as: :imageable

  validates :name, :price, :author_id, presence: true, allow_blank: false
  validates :name, uniqueness: true
  validates :price, numericality: true
end

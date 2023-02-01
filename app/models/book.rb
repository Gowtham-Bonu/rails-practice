class Book < ApplicationRecord
  belongs_to :author
  
  validates :name, :price, :author_id, presence: true, allow_blank: false
  validates :name, uniqueness: true
  validates :price, numericality: true
  has_many :images, as: :imageable
end

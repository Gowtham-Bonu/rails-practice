# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :images, as: :imageable

  validates :first_name, :date_of_birth, :email, presence: true, allow_blank: false
  validates :email, uniqueness: true
end

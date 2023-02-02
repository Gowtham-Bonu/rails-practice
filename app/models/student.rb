class Student < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :dob, comparison: { less_than: Date.today, message: "can't be in future" }, unless: -> {dob.blank?}
  validates :department, inclusion: { in: %w(IT CE), message: " department can't be %{value}" }
  validates :terms_of_usage, acceptance: { message: "You cannot proceed without accepting Terms of Usage" }, presence: true
end

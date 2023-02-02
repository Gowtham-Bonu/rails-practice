# frozen_string_literal: true

class Faculty < ApplicationRecord
  validates :first_name, :last_name, :email_id, presence: true
  validates :phone_number, length: { is: 10 }, numericality: { only_integer: true }, unless: -> { phone_number.blank? }
  validates :email_id, uniqueness: true
  validates :dob, comparison: { less_than: Date.today, message: "can't be in future" }, unless: -> { dob.blank? }
  validates :designation, exclusion: { in: %w[HOD Sr.Prof], message: '%<value>s is reserved.' }
  validates :designation, inclusion: { in: %w[Ass.Prof Prof], message: '%<value>s is not a valid designation.' }
end

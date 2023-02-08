# frozen_string_literal: true

class Faculty < ApplicationRecord
  validates :first_name, :last_name, :email_id, presence: true
  validates :phone_number, length: { is: 10 }, numericality: { only_integer: true }, unless: -> { phone_number.blank? }
  validates :email_id, uniqueness: true
  validates :dob, comparison: { less_than: Date.today, message: "can't be in future" }, unless: -> { dob.blank? }

  after_validation :date_of_birth, if: Proc.new { |faculty| faculty.errors[:dob].empty? }

  validates :designation, exclusion: { in: %w[HOD Sr.Prof], message: '%<value>s is reserved.' }
  validates :designation, inclusion: { in: %w[Ass.Prof Prof], message: '%<value>s is not a valid designation.' }

  after_initialize do |faculty|
    puts "You have initialized the #{faculty.first_name} object!"
  end

  after_find do |faculty|
    puts "You have found the #{faculty.first_name} object!"
  end

  before_create do |faculty|
    puts "creating the #{faculty.first_name} object..."
  end 

  after_create do
    puts "created!"
  end 

  before_update do |faculty|
    puts "updating the #{faculty.first_name} object ..."
  end

  after_update do
    puts "updated."
  end

  before_destroy do |faculty|
    puts "destroying  the #{faculty.first_name} object ..."
  end

  after_destroy do
    puts "destroyed!"
  end

  private

    def date_of_birth
      p "Faculty DOB is valid!"
    end
end

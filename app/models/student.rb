class Student < ApplicationRecord

  @@deleted = false

  validates :first_name, :last_name, presence: true
  validates :dob, comparison: {less_than: Date.today, message: "can't be in future"}, unless: -> {dob.blank?}
  
  before_validation :date_of_birth_of_student

  validates :department, inclusion: {in: %w(IT CE), message: " department can't be %{value}"}
  validates :terms_of_usage, acceptance: true

  after_initialize do |student|
    puts "You have initialized the #{student.first_name} object!"
  end

  after_find do |student|
    puts "You have found the #{student.first_name} object!"
  end

  before_create do |student|
    puts "creating the #{student.first_name} object..."
  end 

  after_create do |student|
    puts "email of #{student.first_name} is validated"
  end 

  before_update do |student|
    puts "updating the #{student.first_name} object ..."
  end

  after_update do
    puts "updated."
  end

  before_destroy do |student|
    puts "destroying  the #{student.first_name} object ..."
    @@deleted = true
  end

  after_destroy :student_deleted, if: Proc.new{ @@deleted }

  private

    def date_of_birth_of_student
      p "student must have a valid DOB"
    end

    def student_deleted
      p "student is deleted"
    end
end

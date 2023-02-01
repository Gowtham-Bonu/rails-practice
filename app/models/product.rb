class Product < ApplicationRecord
  validates :name, presence: true
  before_validation :name_is_not_null

  after_initialize do |product|
    puts "product is initialized"
  end

  after_create do |product|
    puts "record is successfully created"
  end
  
  private
    def name_is_not_null
      puts "name must have a value"
    end

end

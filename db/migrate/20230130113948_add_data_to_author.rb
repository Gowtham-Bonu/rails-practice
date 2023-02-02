# frozen_string_literal: true

class AddDataToAuthor < ActiveRecord::Migration[7.0]
  def change
    Author.create(first_name: 'gowtham', last_name: 'bonu', dob: '20-12-2001', email: 'gowtham@simformsolutions.com')
    Author.create(first_name: 'ronak', last_name: 'dattani', dob: '10-11-2000', email: 'ronak@simformsolutions.com')
    Author.create(first_name: 'kishan', last_name: 'lad', dob: '02-01-2001', email: 'kishan@simformsolutions.com')
    Author.create(first_name: 'yash', last_name: 'chawda', dob: '03-03-2000', email: 'yash@simformsolutions.com')
  end
end

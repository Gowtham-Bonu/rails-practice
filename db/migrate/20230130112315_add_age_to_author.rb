# frozen_string_literal: true

class AddAgeToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :age, :integer
  end
end

# frozen_string_literal: true

class AddDataToBooks < ActiveRecord::Migration[7.0]
  def change
    Book.create(name: 'avatar', price: 30.60, author_id: 1)
    Book.create(name: 'titanic', price: 360.1, author_id: 2)
    Book.create(name: 'terminator', price: 3.60, author_id: 2)
    Book.create(name: 'way of water', price: 300.60, author_id: 3)
  end
end

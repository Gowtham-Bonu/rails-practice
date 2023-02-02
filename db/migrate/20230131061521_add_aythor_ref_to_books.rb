# frozen_string_literal: true

class AddAythorRefToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :author, foreign_key: true
  end
end

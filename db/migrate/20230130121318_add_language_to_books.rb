# frozen_string_literal: true

class AddLanguageToBooks < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do
        add_column :books, :language, :string
      end
      dir.down do
        remove_column :books, :language, :string
      end
    end
  end
end

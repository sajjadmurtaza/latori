# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price
      t.integer :external_id

      t.timestamps
    end
  end
end

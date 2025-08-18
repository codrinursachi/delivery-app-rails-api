# frozen_string_literal: true

# Migration for creating menu items table
class CreateApiV1MenuItems < ActiveRecord::Migration[8.0]
  def change
    create_table :menu_items do |t|
      t.belongs_to :restaurant, null: false, foreign_key: true
      t.string :category
      t.string :name
      t.text :description
      t.decimal :price
      t.boolean :is_available, default: true, null: false

      t.timestamps
    end
  end
end

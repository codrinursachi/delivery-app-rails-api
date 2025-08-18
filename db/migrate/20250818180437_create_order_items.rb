# frozen_string_literal: true

# Migration to create order items table
class CreateOrderItems < ActiveRecord::Migration[8.0]
  def change
    create_table :order_items do |t|
      t.belongs_to :order, null: false, foreign_key: true
      t.belongs_to :menu_item, null: false, foreign_key: true
      t.integer :quantity
      t.text :special_instructions
      t.decimal :price_at_order_time

      t.timestamps
    end
  end
end

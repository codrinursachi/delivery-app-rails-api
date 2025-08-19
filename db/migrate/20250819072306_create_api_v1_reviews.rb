# frozen_string_literal: true

# Migration to create reviews table
class CreateApiV1Reviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.belongs_to :restaurant, null: false, foreign_key: true
      t.belongs_to :order, null: false, foreign_key: true
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end

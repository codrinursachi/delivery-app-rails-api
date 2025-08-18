# frozen_string_literal: true

# Migration to create restaurant addresses table
class CreateRestaurantAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :restaurant_addresses do |t|
      t.belongs_to :restaurant, null: false, foreign_key: true
      t.string :other_details
      t.string :street
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end

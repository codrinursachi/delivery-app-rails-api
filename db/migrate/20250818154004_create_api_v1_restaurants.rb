# frozen_string_literal: true

# Migration to create restaurants table
class CreateApiV1Restaurants < ActiveRecord::Migration[8.0]
  def change
    create_restaurants_table
  end

  private

  def create_restaurants_table
    create_table :restaurants do |table|
      add_restaurant_columns(table)
      table.timestamps
    end
  end

  def add_restaurant_columns(table)
    table.references :account, null: false, foreign_key: true
    table.string :name
    table.text :description
    table.string :phone
    table.string :email
    table.time :opening_time
    table.time :closing_time
    table.string :status
    table.float :average_rating
  end
end

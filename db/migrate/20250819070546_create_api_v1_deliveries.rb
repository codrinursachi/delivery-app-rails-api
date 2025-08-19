# frozen_string_literal: true

# Migration to create deliveries table
class CreateApiV1Deliveries < ActiveRecord::Migration[8.0]
  def change
    create_table :deliveries do |t|
      t.belongs_to :order, null: false, foreign_key: true
      t.belongs_to :delivery_person, null: false, foreign_key: true
      t.string :status
      t.datetime :pickup_time
      t.datetime :delivery_time

      t.timestamps
    end
  end
end

# frozen_string_literal: true

# Migration to create delivery people table
class CreateDeliveryPeople < ActiveRecord::Migration[8.0]
  def change
    create_table :delivery_people do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.string :license_number
      t.string :vehicle_type
      t.string :status
      t.string :document_approval_status

      t.timestamps
    end
  end
end

# frozen_string_literal: true

# Migration to create user addresses table
class CreateAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :addresses do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.string :other_details
      t.string :street
      t.string :city
      t.string :state
      t.boolean :is_default, null: false, default: false

      t.timestamps
    end
  end
end

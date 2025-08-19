# frozen_string_literal: true

# Migration to create delivery reviews table
class CreateApiV1DeliveryReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :delivery_reviews do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.belongs_to :delivery_person, null: false, foreign_key: true
      t.belongs_to :order, null: false, foreign_key: true
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end

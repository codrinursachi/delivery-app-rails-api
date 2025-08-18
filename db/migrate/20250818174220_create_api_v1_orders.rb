# frozen_string_literal: true

# Migration for creating orders table
class CreateApiV1Orders < ActiveRecord::Migration[8.0]
  def change
    create_orders_table
  end

  private

  def create_orders_table
    create_table :orders do |table|
      add_order_references(table)
      add_order_details(table)
      table.timestamps
    end
  end

  def add_order_references(table)
    table.belongs_to :account, null: false, foreign_key: true
    table.belongs_to :restaurant, null: false, foreign_key: true
    table.belongs_to :address, null: false, foreign_key: true
  end

  def add_order_details(table)
    table.string :status
    table.datetime :delivery_time
    table.decimal :total_price
    table.string :payment_method
    table.string :payment_status
  end
end

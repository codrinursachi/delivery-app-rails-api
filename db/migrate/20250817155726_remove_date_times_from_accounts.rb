# frozen_string_literal: true

# Remove created_at and updated_at columns from accounts table
class RemoveDateTimesFromAccounts < ActiveRecord::Migration[8.0]
  def change
    remove_column :accounts, :created_at, :datetime
    remove_column :accounts, :updated_at, :datetime
  end
end

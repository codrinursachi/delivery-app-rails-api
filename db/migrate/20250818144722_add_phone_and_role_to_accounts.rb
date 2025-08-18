# frozen_string_literal: true

# Add phone and role to accounts
class AddPhoneAndRoleToAccounts < ActiveRecord::Migration[8.0]
  def change
    add_column :accounts, :phone, :string
    add_column :accounts, :role, :string
  end
end

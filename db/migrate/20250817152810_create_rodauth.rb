# frozen_string_literal: true

# RodAuth initial migration
class CreateRodauth < ActiveRecord::Migration[8.0]
  def change
    create_accounts_table
    create_account_password_reset_keys_table
    create_account_verification_keys_table
    create_account_login_change_keys_table
  end

  private

  def create_accounts_table
    create_table :accounts do |t|
      t.integer :status, null: false, default: 1
      t.string :email, null: false
      t.index :email, unique: true, where: 'status IN (1, 2)'
      t.string :password_hash
      t.timestamps
    end
  end

  def create_account_password_reset_keys_table
    create_table :account_password_reset_keys, id: false do |t|
      t.integer :id, primary_key: true # rubocop:disable Rails/DangerousColumnNames
      t.foreign_key :accounts, column: :id
      t.string :key, null: false
      t.datetime :deadline, null: false
      t.datetime :email_last_sent, null: false, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end

  def create_account_verification_keys_table
    create_table :account_verification_keys, id: false do |t|
      t.integer :id, primary_key: true # rubocop:disable Rails/DangerousColumnNames
      t.foreign_key :accounts, column: :id
      t.string :key, null: false
      t.datetime :requested_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :email_last_sent, null: false, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end

  def create_account_login_change_keys_table
    create_table :account_login_change_keys, id: false do |t|
      t.integer :id, primary_key: true # rubocop:disable Rails/DangerousColumnNames
      t.foreign_key :accounts, column: :id
      t.string :key, null: false
      t.string :login, null: false
      t.datetime :deadline, null: false
    end
  end
end

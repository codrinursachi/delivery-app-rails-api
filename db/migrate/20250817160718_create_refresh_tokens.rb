# frozen_string_literal: true

# Create account JWT refresh keys table
class CreateRefreshTokens < ActiveRecord::Migration[8.0]
  def change
    create_table :account_jwt_refresh_keys do |t| # rubocop:disable Rails/CreateTableWithTimestamps
      t.belongs_to :account, null: false, foreign_key: true
      t.string :key, null: false
      t.datetime :deadline, null: false
    end
  end
end

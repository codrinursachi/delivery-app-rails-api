class CreateAllowlistedJwts < ActiveRecord::Migration[8.0]
  def change
    create_table :allowlisted_jwts do |t|
      t.string :jti
      t.references :user, null: false, foreign_key: true
      t.datetime :exp

      t.timestamps
    end
  end
end

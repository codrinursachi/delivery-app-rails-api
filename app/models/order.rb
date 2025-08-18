# frozen_string_literal: true

# Order model
class Order < ApplicationRecord
  belongs_to :account
  belongs_to :restaurant
  belongs_to :address
end

# frozen_string_literal: true

# Review model
class Review < ApplicationRecord
  belongs_to :account
  belongs_to :restaurant
  belongs_to :order
end

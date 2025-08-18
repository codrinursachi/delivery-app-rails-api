# frozen_string_literal: true

# Menu item model
class MenuItem < ApplicationRecord
  belongs_to :restaurant
end

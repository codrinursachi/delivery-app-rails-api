# frozen_string_literal: true

# Restaurant address model
class RestaurantAddress < ApplicationRecord
  belongs_to :restaurant
end

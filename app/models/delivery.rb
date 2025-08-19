# frozen_string_literal: true

# Delivery model
class Delivery < ApplicationRecord
  belongs_to :order
  belongs_to :delivery_person
end

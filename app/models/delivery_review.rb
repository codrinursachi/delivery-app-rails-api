# frozen_string_literal: true

# Delivery review model
class DeliveryReview < ApplicationRecord
  belongs_to :account
  belongs_to :delivery_person
  belongs_to :order
end

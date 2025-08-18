# frozen_string_literal: true

# Delivery person model
class DeliveryPerson < ApplicationRecord
  belongs_to :account
end

# frozen_string_literal: true

# Order item model
class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :menu_item
end

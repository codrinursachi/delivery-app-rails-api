# frozen_string_literal: true

FactoryBot.define do
  factory :order_item do
    order { nil }
    menu_item { nil }
    quantity { 1 }
    special_instructions { 'MyText' }
    price_at_order_time { '9.99' }
  end
end

# frozen_string_literal: true

FactoryBot.define do
  factory :order, class: 'Api::V1::Order' do
    account { nil }
    restaurant { nil }
    address { nil }
    status { 'MyString' }
    delivery_time { '2025-08-18 20:42:20' }
    total_price { '9.99' }
    payment_method { 'MyString' }
    payment_status { 'MyString' }
  end
end

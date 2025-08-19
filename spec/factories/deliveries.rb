# frozen_string_literal: true

FactoryBot.define do
  factory :api_v1_delivery, class: 'Api::V1::Delivery' do
    order { nil }
    delivery_person { nil }
    status { 'MyString' }
    pickup_time { '2025-08-19 10:05:47' }
    delivery_time { '2025-08-19 10:05:47' }
  end
end

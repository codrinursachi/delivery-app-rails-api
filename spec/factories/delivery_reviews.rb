# frozen_string_literal: true

FactoryBot.define do
  factory :api_v1_delivery_review, class: 'Api::V1::DeliveryReview' do
    user { nil }
    delivery_person { nil }
    order { nil }
    rating { 1 }
    comment { 'MyText' }
  end
end

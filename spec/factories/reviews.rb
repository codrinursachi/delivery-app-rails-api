# frozen_string_literal: true

FactoryBot.define do
  factory :api_v1_review, class: 'Api::V1::Review' do
    account { nil }
    restaurant { nil }
    order { nil }
    rating { 1 }
    comment { 'MyText' }
  end
end

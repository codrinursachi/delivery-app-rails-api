# frozen_string_literal: true

FactoryBot.define do
  factory :api_v1_restaurant, class: 'Api::V1::Restaurant' do
    account { nil }
    name { 'MyString' }
    description { 'MyText' }
    phone { 'MyString' }
    email { 'MyString' }
    opening_time { '8:40:04' }
    closing_time { '18:40:04' }
    status { 'MyString' }
    average_rating { 1.5 }
  end
end

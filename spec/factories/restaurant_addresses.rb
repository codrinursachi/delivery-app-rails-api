# frozen_string_literal: true

FactoryBot.define do
  factory :restaurant_address do
    restaurant { nil }
    other_details { 'MyString' }
    street { 'MyString' }
    city { 'MyString' }
    state { 'MyString' }
  end
end

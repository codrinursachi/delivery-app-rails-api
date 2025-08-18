# frozen_string_literal: true

FactoryBot.define do
  factory :address, class: 'Api::V1::Address' do
    account { nil }
    other_details { 'MyString' }
    street { 'MyString' }
    city { 'MyString' }
    state { 'MyString' }
    is_default { false }
  end
end

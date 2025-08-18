# frozen_string_literal: true

FactoryBot.define do
  factory :menu_item, class: 'Api::V1::MenuItem' do
    restaurant { nil }
    category { 'MyString' }
    name { 'MyString' }
    description { 'MyText' }
    price { '9.99' }
    is_available { false }
  end
end

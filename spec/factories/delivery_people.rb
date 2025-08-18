# frozen_string_literal: true

FactoryBot.define do
  factory :delivery_person do
    account { nil }
    license_number { 'MyString' }
    vehicle_type { 'MyString' }
    status { 'MyString' }
    document_approval_status { 'MyString' }
  end
end

FactoryBot.define do
  factory :address do
    account { nil }
    other_details { 'MyString' }
    street { 'MyString' }
    city { 'MyString' }
    state { 'MyString' }
    is_default { false }
  end
end

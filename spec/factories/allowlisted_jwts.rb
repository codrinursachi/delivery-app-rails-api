FactoryBot.define do
  factory :allowlisted_jwt do
    jti { "MyString" }
    user { nil }
    exp { "2025-08-15 21:03:38" }
  end
end

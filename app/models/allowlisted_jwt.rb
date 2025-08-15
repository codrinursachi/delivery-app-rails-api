class AllowlistedJwt < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Allowlist
  belongs_to :user

  validates :jti, presence: true
end

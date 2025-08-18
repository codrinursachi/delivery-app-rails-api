# frozen_string_literal: true

# User addresses model
class Address < ApplicationRecord
  belongs_to :account
end

# frozen_string_literal: true

# Restaurant model
class Restaurant < ApplicationRecord
  belongs_to :account
end

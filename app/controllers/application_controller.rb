# frozen_string_literal: true

# This is the base controller
class ApplicationController < ActionController::API
  private

  def current_account
    rodauth.rails_account
  end
end

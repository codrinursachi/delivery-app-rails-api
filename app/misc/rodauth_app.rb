# frozen_string_literal: true

# Rodauth config.
class RodauthApp < Rodauth::Rails::App
  # primary configuration
  configure RodauthMain

  # secondary configuration
  # configure RodauthAdmin, :admin

  route(&:rodauth)
end

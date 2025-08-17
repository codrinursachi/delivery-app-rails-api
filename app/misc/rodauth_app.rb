# frozen_string_literal: true

# Rodauth config.
class RodauthApp < Rodauth::Rails::App
  # primary configuration
  configure RodauthMain

  # secondary configuration
  # configure RodauthAdmin, :admin
  plugin :rodauth do
    prefix '/api/v1'
  end
  route do |r|
    r.on 'api' do
      r.on 'v1' do
        r.rodauth
      end
    end
  end
end

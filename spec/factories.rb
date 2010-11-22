require 'factory_girl'

Factory.define :client, :class => OAuth2::Model::Client do |c|
  c.client_id     's6BhdRkqt3'
  c.client_secret 'gX1fBat3bV'
  c.name          'Test client'
  c.redirect_uri  'https://client.example.com/cb'
end

Factory.define :access_code, :class => OAuth2::Model::AccessCode do |ac|
  ac.client     Factory(:client)
  ac.code       'i1WsRn1uB1'
  ac.expires_at 1.hour.from_now
end

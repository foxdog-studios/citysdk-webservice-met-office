require "citysdk_webservice_met_office/version"

class CitySDK_Services < Sinatra::Base
  get '/met-office' do
    return {:result => 'this is just a test for now'}.to_json
  end
end

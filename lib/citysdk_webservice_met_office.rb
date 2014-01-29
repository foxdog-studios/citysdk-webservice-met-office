require 'json'

require 'metoffice_datapoint'

require "citysdk_webservice_met_office/version"

class CitySDK_Services < Sinatra::Base
  post '/met-office' do
    json = JSON.parse(request.body.read)
    id = json['id']
    key = $settings.datapointkey
    client = MetofficeDatapoint.new(api_key: key)
    resolution = $settings.resolution
    site_forecast = client.forecasts(id, {res: resolution})
    siteDv = site_forecast['SiteRep']['DV']
    node = siteDv['Location']
    # Rename the id key to what citysdk expects
    node['id'] = node['i']
    node.delete 'i'
    data = siteDv['Location']
    return {
      :status => 'success',
      :data => data
    }.to_json
  end
end

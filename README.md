citysdk-webservice-met-office
=============================

CitySDK webservice for met office data. A route for the CitySDK webservice
server. See https://github.com/foxdog-studios/citysdk-webservice-server

You will need to add to the `config.yaml` in the webservice server the following
key values

    datapointkey: your-datapoint-key
    resolution: 3hourly


## Installation

Add this line to your application's Gemfile:

    gem 'citysdk_webservice_met_office'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install citysdk_webservice_met_office

## Usage

With the webservice server running with this gem, given that you have entered
your datapoint key and resolution into the `config.yml`, you should be able to
get data back using something like this

    $ curl \
        -X POST \
        -d '{"id": "3063"}' \
        -H "Content-Type: application/json" \
        http://localhost:9294/met-office

For use with the CitySDK, you will need to set the webservice URL for your
Met Office layer as `http://<hostname>/met-office`.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

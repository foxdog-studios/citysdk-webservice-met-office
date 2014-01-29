# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'citysdk_webservice_met_office/version'

Gem::Specification.new do |spec|
  spec.name          = "citysdk_webservice_met_office"
  spec.version       = CitysdkWebserviceMetOffice::VERSION
  spec.authors       = ["Lloyd Henning"]
  spec.email         = ["lloyd.w.henning@gmail.com"]
  spec.description   = %q{CitySDK webservice for Met Office data}
  spec.summary       = %q{Use with the webservice server}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'sinatra'
  spec.add_development_dependency 'sinatra/config_file'
end

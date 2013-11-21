#!/usr/bin/env ruby

require 'sinatra'
require 'json'
#require 'geocoder'

set :bind, '10.0.1.105'

get '/' do
 #   result = Geocoder.search('190.135.146.179')
 #   city = request.location.city
 #   "Your IP address is #{request.ip} and your location is #{city} "
    "Your IP address is #{request.ip}"
end

get '/json' do
    content_type :json
    ip = Hash.new
    ip['ip'] = request.ip
    ip.to_json
end

#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'sinatra'
require 'json'

get '/' do
  "Your IP address is #{request.ip}"
end

get '/json' do
  content_type :json
  ip = Hash.new
  ip['ip'] = request.ip
  ip.to_json
end

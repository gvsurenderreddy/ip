# -*- coding: UTF-8 -*-
require 'spec_helper'

describe 'IP API' do
  it 'GET /' do
    get '/'
    last_response.should be_ok
  end

  it 'GET /json' do
    get '/json'
    last_response.should be_ok
    info = JSON.parse(last_response.body)
    expect(info.size).to eq(1) # buy and sale
    info['ip'].should be_a_kind_of(String)
    puts 'ip ' + info.to_s
  end

end

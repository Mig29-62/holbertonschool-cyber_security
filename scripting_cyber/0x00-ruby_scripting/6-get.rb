require 'net/http'
require 'json'
require 'uri'

def get_request(url)
  uri = URI(url)
  response = Net::HTTP.get_response(uri)

  result = {
    "status" => response.code.to_i,
    "body" => response.body
  }

  puts JSON.pretty_generate(result)
end

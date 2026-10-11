require 'net/http'
require 'uri'

def get_request(url)
  uri = URI(url)
  response = Net::HTTP.get_response(uri)
  print "Response status: #{response.code} #{response.message.strip}\nResponse body:\n#{response.body}"
end

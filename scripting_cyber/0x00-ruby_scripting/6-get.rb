require 'net/http'
require 'uri'

def get_request(url)
  uri = URI(url)
  response = Net::HTTP.get_response(uri)
  puts "Response status: #{response.code} #{response.msg.strip}"
  puts "Response body:"
  puts response.body
end

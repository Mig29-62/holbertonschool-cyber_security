require 'net/http'
require 'uri'
require 'json'

def post_request(url, body_params = {})
  uri = URI(url)
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = (uri.scheme == 'https')

  request = Net::HTTP::Post.new(uri)
  request['Content-Type'] = 'application/json'
  request.body = body_params.to_json

  response = http.request(request)

  puts "Response status: #{response.code} #{response.msg.strip}"
  puts "Response body:"
  begin
    parsed = JSON.parse(response.body)
    puts JSON.pretty_generate(parsed)
  rescue
    puts response.body
  end
end

#!/usr/bin/env ruby
require 'json'
file_content=File.read('file.json')
data=JSON.parse(file_content)
puts data['userId']
end

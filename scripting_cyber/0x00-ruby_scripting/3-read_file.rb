#!/usr/bin/env ruby
require 'json'

def count_user_ids(path)
  file_content = File.read(path)
  data = JSON.parse(file_content)
  puts data['userId']
end

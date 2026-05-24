#!/usr/bin/env ruby
require 'json'

def count_user_ids(path)
  data = JSON.parse(File.read(path))
  
  
  counts = data.tally { |item| item['userId'] }

  
  counts.sort.each { |user_id, count| puts "#{user_id}: #{count}" }
end

#!/usr/bin/env ruby
require 'digest'

if ARGV.length != 2
  puts "Usage: 10-password_cracked.rb HASHED_PASSWORD DICTIONARY_FILE"
  exit 1
end

target_hash = ARGV[0].downcase
dictionary_file = ARGV[1]

unless File.exist?(dictionary_file)
  puts "Error: Dictionary file not found."
  exit 1
end

found_password = nil

File.foreach(dictionary_file) do |line|
  password = line.chomp
  if Digest::SHA256.hexdigest(password) == target_hash
    found_password = password
    break
  end
end

if found_password
  puts "Password found: #{found_password}"
else
  puts "Password not found in dictionary."
end

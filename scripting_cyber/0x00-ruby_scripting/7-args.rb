#!/usr/bin/env ruby

def print_arguments
  parsed_args = ARGV.flat_map { |arg| arg.split(',') }
  if parsed_args.empty?
    puts "No arguments provided."
  else 
    parsed_args.each_with_index do |arg, index|
      puts "#{index + 1}. #{arg}"
    end
  end
end

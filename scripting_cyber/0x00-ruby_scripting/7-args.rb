#!/usr/bin/env ruby
def print_arguments
  parsed_args = ARGV.flat_map { |arg| arg.split(',') }
  if parsed_args.empty?
    puts "No arguments provided."
  else
    puts "Arguments:"
    parsed_args.each do |arg|
      puts arg
    end
  end
end

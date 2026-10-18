require 'open-uri'
require 'fileutils'

if ARGV.length != 2
  puts "Usage: 9-download_file.rb URL LOCAL_FILE_PATH"
  exit
end

url, local_path = ARGV

begin
  FileUtils.mkdir_p(File.dirname(local_path))
  URI.open(url) { |remote_file| IO.copy_stream(remote_file, local_path) }
  puts "File downloaded and saved to #{local_path}."
rescue StandardError => e
  abort "An error occurred: #{e.message}"
end

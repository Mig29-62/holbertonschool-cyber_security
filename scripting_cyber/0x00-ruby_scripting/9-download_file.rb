require 'open-uri'
require 'fileutils'

abort "Usage: ruby #{$PROGRAM_NAME} URL LOCAL_FILE_PATH" if ARGV.length != 2

url, local_path = ARGV

begin
  FileUtils.mkdir_p(File.dirname(local_path))
  URI.open(url) { |remote_file| IO.copy_stream(remote_file, local_path) }
rescue StandardError => e
  abort "An error occurred: #{e.message}"
end

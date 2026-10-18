require 'json'

def merge_json_files(file1_path, file2_path)
  # Read and parse JSON content from both files
  data1 = File.exist?(file1_path) ? JSON.parse(File.read(file1_path)) : []
  data2 = File.exist?(file2_path) ? JSON.parse(File.read(file2_path)) : []

  # Merge the data (assuming they are arrays or hashes, e.g., combining arrays)
  if data1.is_a?(Array) && data2.is_a?(Array)
    merged_data = data2 + data1
  elsif data1.is_a?(Hash) && data2.is_a?(Hash)
    merged_data = data2.merge(data1)
  else
    merged_data = [data2, data1].flatten
  end

  # Write the merged data back to file2_path
  File.write(file2_path, JSON.pretty_generate(merged_data))
end

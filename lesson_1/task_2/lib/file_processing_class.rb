# frozen_string_literal: true

class FileProcessing
  def self.check_and_fill(file_path, file_size)
    if File.exist?(file_path)
      'File exists'
    else
      file = File.new(file_path, 'w')
      file.write('1' * file_size.to_i)
    end
  end
end

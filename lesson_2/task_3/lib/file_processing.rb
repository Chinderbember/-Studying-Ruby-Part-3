# frozen_string_literal: true

class FileProcessing
  MBYTES_IN_GBYTE = KBYTES_IN_MBYTE = BYTES_IN_KBYTE = 1024

  def self.size_format(file_size)
    if (size_format_g = file_size.to_f / BYTES_IN_KBYTE / KBYTES_IN_MBYTE / MBYTES_IN_GBYTE) >= 1
      "#{size_format_g.round(2)}G"
    elsif (size_format_m = file_size.to_f / BYTES_IN_KBYTE / KBYTES_IN_MBYTE) >= 1
      "#{size_format_m.round(2)}M"
    elsif (size_format_k = file_size.to_f / BYTES_IN_KBYTE) >= 1
      "#{size_format_k.round(2)}K"
    else
      file_size
    end
  end
end

# frozen_string_literal: true

class File
  class << self
    def divide_on_10_parts(path)
      error_message = 'Unable to divide file, because file_size < 10 bytes'
      raise error_message if size(path) < 10

      divider_10_parts(path)
    end

    def divider_10_parts(path)
      origin_file_size = File.size(path)
      origin_file_content = File.read(path)
      parts_amount = 10

      part_size = (origin_file_size.to_f / parts_amount).to_i
      rest_data_size = origin_file_size - part_size * (parts_amount - 1)

      creating_10_parts(path, parts_amount, origin_file_content, indexes_for_parts(part_size, rest_data_size))
    end

    def creating_10_parts(path, parts_amount, origin_file_content, indexes_for_parts_var)
      parts_amount.times do |part_number|
        part_name = format("#{path}x%02d", part_number + 1)

        File.open(part_name, 'w') do |created_file|
          created_file.write origin_file_content.byteslice(indexes_for_parts_var[part_number])
        end
      end
    end

    def indexes_for_parts(part_size, rest_data_size)
      indexes = Array.new(10) do |part_index|
        start_index_for_part = 0 + part_index * part_size
        end_index_for_part = start_index_for_part + part_size - 1
        start_index_for_part..end_index_for_part
      end
      indexes[-1] = Range.new(indexes[-1].begin, indexes[-1].end + rest_data_size)
      indexes
    end
  end
end

origin_file = File.open(ARGV.first, 'r')
origin_file_size = File.size(origin_file)
origin_file_content = File.read(origin_file)
PARTS_AMOUNT = 10

part_size = (origin_file_size.to_f / PARTS_AMOUNT).to_i

(PARTS_AMOUNT - 1).times do |part_index|
	File.open("part#{part_index + 1}.txt", 'w') do |created_file|
		origin_start_index_for_part = 0 + part_index * part_size
		origin_end_index_for_part = origin_start_index_for_part + part_size - 1
		origin_indexes_for_part = origin_start_index_for_part..origin_end_index_for_part
		created_file.write origin_file_content.byteslice(origin_indexes_for_part)
	end
end


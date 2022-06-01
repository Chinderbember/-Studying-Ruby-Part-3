 MBYTES_IN_GBYTE = KBYTES_IN_MBYTE = BYTES_IN_KBYTE = 1024

file_size = File.size(ARGV.first)

if (size_format_g = file_size.to_f / BYTES_IN_KBYTE / KBYTES_IN_MBYTE / MBYTES_IN_GBYTE ) >= 1
	puts "#{size_format_g}G"
elsif (size_format_m = file_size.to_f / BYTES_IN_KBYTE / KBYTES_IN_MBYTE ) >= 1
	puts "#{size_format_m}M"
elsif (size_format_k = file_size.to_f / BYTES_IN_KBYTE ) >= 1
	puts "#{size_format_k}K"
else
	puts file_size
end

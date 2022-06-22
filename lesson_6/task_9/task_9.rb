# frozen_string_literal: true

FILE_FORMATS = %w[.jpg .png .raw .tiff .psd .bmp .gif].freeze
puts Dir.entries(ARGV.first)
        .select { |el| FILE_FORMATS.include? File.extname(el) }
        .sample

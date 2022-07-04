# frozen_string_literal: true

require 'fileutils'

dir = File.join(ARGV.first, '/.')
destination_dir = ARGV.last

FileUtils.cp_r dir, destination_dir

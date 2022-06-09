# frozen_string_literal: true

require_relative 'lib/extended_hash'
require 'yaml'

puts YAML.load_file('.rubocop.yml').to_json

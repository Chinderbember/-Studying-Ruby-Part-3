require_relative 'lib/extended_hash'
require 'yaml'

h = {"first_name" => 32321, "last_name" => "Петрович", "patronymic" => "Сидоров", "params" => {"score" => [1, 3, {"last_name" => "Петрович", "patronymic" => "Сидоров"}], "number" => 762 } }

p YAML.load_file('.rubocop.yml')
puts YAML.load_file('.rubocop.yml').to_json_hash

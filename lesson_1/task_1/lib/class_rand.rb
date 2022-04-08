# frozen_string_literal: true

class Rand
  class << self
    def random_line(file_path)
      demo_result = result_preparing(file_path)
      case demo_result
      when Array
        warn demo_result.first
      else
        demo_result
      end
    end

    private

    def result_preparing(file_path)
      File.open(file_path) do |file|
        if File.zero?(file)
          ['ERROR: file is empty']
        else
          lines = file.map(&:itself)
          random_index = rand(0..lines.size - 1)
          lines[random_index]
        end
      end
    end
  end
end

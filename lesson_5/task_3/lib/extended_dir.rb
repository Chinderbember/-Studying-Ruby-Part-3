# frozen_string_literal: true

class Dir
  def self.detailed_entries(path)
    content = Dir.entries(path).reject { |el| File.file?(File.join(path, el)) }
    content.slice!(0..1)
    content = content.map { |el| File.join(path, el) }
    content_copy = content.dup
    content.reduce(content_copy) { |total, el| total + detailed_entries(el) }
  end

  def self.wd_detailed_entries
    detailed_entries('.')
  end
end

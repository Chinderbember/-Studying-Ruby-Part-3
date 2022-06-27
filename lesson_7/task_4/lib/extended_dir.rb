# frozen_string_literal: true

class Dir
  def self.detailed_entries_dirs(path)
    content = Dir.entries(path).reject { |el| File.file?(File.join(path, el)) }
    content.slice!(0..1)
    content = content.map { |el| File.join(path, el) }
    content_copy = content.dup
    content.reduce(content_copy) { |total, el| total + detailed_entries_dirs(el) }
  end

  def self.children_dirs_with_f(path)
    keys = detailed_entries_dirs(path) << path
    values = keys.map do |catalog|
      Dir.entries(catalog).select { |el| File.file?(File.join(catalog, el)) }
    end
    keys.zip(values).to_h
  end
end

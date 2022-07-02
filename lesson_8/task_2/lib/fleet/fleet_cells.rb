# frozen_string_literal: true

# rubocop:disable Naming/MethodParameterName, Style/ClassVars
class Fleet
  class Cells
    MAP_SIZE = 10
    ALL_CELLS = [*1..MAP_SIZE].reduce([]) { |total_arr, x| total_arr + [*1..MAP_SIZE].map { |y| [x, y] } }
    @@cells_hash = (ALL_CELLS.zip Array.new(100) { true }).to_h

    class << self
      def list_with_status
        @@cells_hash
      end

      def status(x:, y:)
        @@cells_hash[[x, y]]
      end

      def set_status(x:, y:, free:)
        @@cells_hash[[x, y]] = free
      end
    end
  end
end
# rubocop:enable Naming/MethodParameterName, Style/ClassVars

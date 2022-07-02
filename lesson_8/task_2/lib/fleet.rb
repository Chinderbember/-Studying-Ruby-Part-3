# frozen_string_literal: true

class Fleet
  CLASSES_INST_METS = [%i[rockets torpedos location], %i[rockets location], %i[hold crane location]].freeze
  # rubocop:disable Naming/ConstantName
  Submarine, RocketCruzer, MilitaryTransport =
    CLASSES_INST_METS.map do |class_methods|
      Class.new(Struct.new(*class_methods, keyword_init: true)) do
        def self.new(params)
          location = params[:location]
          if Cells.status(x: location[:x], y: location[:y])
            Cells.set_status(x: location[:x], y: location[:y], free: false)
            super
          else
            warn 'Chosen coordinates are busy!'
          end
        end
      end
    end
  # rubocop:enable Naming/ConstantName
end

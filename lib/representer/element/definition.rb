module Representer
  module Element
    class Definition
      def initialize(name)
        @name = name
      end

      def add_field(name, type_name, options = {})
        type = Element::Type.fetch(type_name).new(options)
        field = Element::Field.new(name, type)

        fields << field
      end

      def fields
        @fields ||= []
      end
    end
  end
end

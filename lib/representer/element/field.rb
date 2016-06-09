module Representer
  module Element
    class Field
      attr_reader :name, :type

      def initialize(name, type)
        @name = name
        @type = type
      end
    end
  end
end

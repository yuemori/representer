module Representer
  module Element
    class Param
      def initialize(name, param_type, options)
        @name = name
        @param_type = param_type
        @options = options
      end
    end
  end
end

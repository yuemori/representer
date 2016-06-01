module Representer
  module Element
    class Response
      def add_param(name, definition_or_type, options = {})
        param = Param.new(name, definition_or_type, options)

        params << param
      end

      def params
        @params ||= []
      end
    end
  end
end

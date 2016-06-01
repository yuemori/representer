module Representer
  module Evaluator
    class ResponseEvaluator
      def initialize(response)
        @response = response
      end

      def param(name, definition_or_type, options = {})
        @response.add_param(name, definition_or_type, options)
      end
    end
  end
end

module Representer
  module Evaluator
    class DefinitionEvaluator
      def initialize(definition)
        @definition = definition
      end

      def field(name, type)
        @definition.add_field(name, type)
      end
    end
  end
end

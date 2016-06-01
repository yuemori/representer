module Representer
  module Evaluator
    class NamespaceEvaluator
      def initialize(namespace)
        @namespace = namespace
      end

      def definition(name, &block)
        definition = Element::Definition.new(name)
        DefinitionEvaluator.new(definition).instance_eval(&block)
        @namespace.add_definition(definition)
      end

      def link(name, &block)
        link = Element::Link.new(name)
        LinkEvaluator.new(link).instance_eval(&block)
        @namespace.add_link(link)
      end
    end
  end
end

module Representer
  class Parser
    alias parse instance_eval

    private

    def namespace(name, &block)
      Namespace.new(name).tap do |namespace|
        Evaluator::NamespaceEvaluator.new(namespace).instance_eval(&block)
      end
    end
  end
end

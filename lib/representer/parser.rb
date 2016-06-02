module Representer
  class Parser
    alias parse instance_eval

    private

    def namespace(name, &block)
      if Representer.registered?(name)
        namespace = Representer.fetch(name)
      else
        namespace = Namespace.new(name)
        Representer.register(namespace)
      end

      Evaluator::NamespaceEvaluator.new(namespace).instance_eval(&block)
    end
  end
end

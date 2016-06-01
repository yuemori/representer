module Representer
  module Evaluator
    class LinkEvaluator
      def initialize(link)
        @link = link
      end

      def path(path)
        @link.path = path
      end

      def method(method)
        @link.method = method
      end

      def response(&block)
        ResponseEvaluator.new(@link.response).instance_eval(&block)
      end
    end
  end
end

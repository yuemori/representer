module Representer
  module Element
    class Link
      attr_reader :name, :path, :method

      def initialize(name)
        @name = name
      end

      def path=(path)
        @path = path.gsub(%r{/\Z}, '')
      end

      SUPPORTED_METHODS = %w(GET POST PUT DELETE).freeze

      def method=(method)
        method = method.to_s.upcase

        raise ArgumentError.new, "#{method} is not supported method" unless SUPPORTED_METHODS.include?(method)

        @method = method.inquiry
      end

      def response
        @response ||= Response.new
      end
    end
  end
end

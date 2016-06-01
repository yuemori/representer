module Representer
  module Element
    class Link
      attr_accessor :path, :method

      def initialize(name)
        @name = name
      end

      def response
        @response ||= Response.new
      end
    end
  end
end

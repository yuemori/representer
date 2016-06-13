module Representer
  module Element
    module Type
      class Integer < Value
        def example
          @example ||= 12345678
        end
      end
    end
  end
end

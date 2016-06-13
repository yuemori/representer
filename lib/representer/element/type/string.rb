module Representer
  module Element
    module Type
      class String < Value
        def example
          @example ||= 'abcdefg'
        end
      end
    end
  end
end

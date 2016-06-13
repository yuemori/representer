module Representer
  module Element
    module Type
      class Float < Value
        def example
          @example ||= 1.2345678
        end
      end
    end
  end
end

module Representer
  module Element
    module Type
      class DateTime < Value
        def example
          @example ||= Time.now.iso8601
        end
      end
    end
  end
end

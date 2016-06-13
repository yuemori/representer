module Representer
  module Element
    module Type
      class Value
        attr_accessor :example, :description

        def initialize(options)
          options.each do |key, value|
            public_send("#{key}=", value)
          end
        end

        def to_s
          self.class.name.demodulize
        end

        %i(example description).each do |method_name|
          attr_writer method_name

          define_method method_name do
            instance_variable_get("@#{method_name}")
          end
        end
      end
    end
  end
end

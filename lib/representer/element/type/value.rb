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

        def options
          self.class.options.each_with_object({}) { |k, h| h[k] = public_send(k)}.compact
        end

        def to_s
          self.class.name.demodulize
        end

        def self.options
          @options ||= %i(example decrpiton)
        end

        options.each do |method_name|
          attr_writer method_name

          define_method method_name do
            instance_variable_get("@#{method_name}")
          end
        end
      end
    end
  end
end

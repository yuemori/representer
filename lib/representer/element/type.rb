module Representer
  module Element
    module Type
      class << self
        delegate :fetch, :register, to: :types

        private

        def types
          @types ||= Registry.new(:Type)
        end
      end

      class Value
        attr_reader :options

        def initialize(options)
          @options = options
        end

        def to_s
          self.class.name.demodulize
        end
      end

      class Integer < Value
      end

      class String < Value
      end

      class Float < Value
      end

      class DateTime < Value
      end

      register(:integer, Type::Integer)
      register(:string, Type::String)
      register(:float, Type::Float)
      register(:date_time, Type::DateTime)
    end
  end
end

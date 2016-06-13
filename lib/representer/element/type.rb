require 'representer/element/type/value'
require 'representer/element/type/integer'
require 'representer/element/type/string'
require 'representer/element/type/float'
require 'representer/element/type/date_time'

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

      register(:integer, Type::Integer)
      register(:string, Type::String)
      register(:float, Type::Float)
      register(:date_time, Type::DateTime)
    end
  end
end

module Representer
  class Registry
    include Enumerable

    attr_reader :name, :items

    delegate :key?, :clear, to: :items
    delegate :find, :each, to: :values

    alias registered? key?

    def initialize(name)
      @name = name
      @items = {}.with_indifferent_access
    end

    def fetch(name)
      raise ArgumentError.new, "#{name} is not registered in #{@name}" unless registered?(name)

      items[name]
    end
    alias [] fetch

    def register(name, value)
      raise ArgumentError.new, "#{name} is registered in #{@name}" if registered?(name)

      items[name] = value
    end

    def values
      items.values
    end
  end
end

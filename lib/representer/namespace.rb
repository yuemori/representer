module Representer
  class Namespace
    def initialize(name)
      @name = name
    end

    def add_definition(definition)
      definitions << definition
    end

    def definitions
      @definitions ||= []
    end

    def add_link(link)
      links << link
    end

    def links
      @links ||= []
    end
  end
end

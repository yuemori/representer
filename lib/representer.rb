require 'active_support'
require 'active_support/core_ext'
require 'representer/version'
require 'representer/registry'
require 'representer/parser'
require 'representer/evaluator'
require 'representer/element'
require 'representer/namespace'
require 'representer/plugin'

module Representer
  class << self
    include Enumerable

    delegate :each, :fetch, :registered?, to: :namespaces

    def load(file)
      string = File.read(file)
      Parser.new.parse(string)
    end

    def register(namespace)
      namespaces.register namespace.name, namespace
    end

    def register_plugin(name, klass)
      plugins.register name, klass
    end

    def generate
      plugins.each { |plugin| plugin.new(namespaces).generate }
    end

    private

    def namespaces
      @namespaces ||= Registry.new(:Namespace)
    end

    def plugins
      @plugins ||= Registry.new(:Plugin)
    end
  end
end

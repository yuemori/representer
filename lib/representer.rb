require 'active_support'
require 'active_support/core_ext'
require 'representer/version'
require 'representer/registry'
require 'representer/parser'
require 'representer/evaluator'
require 'representer/element'
require 'representer/namespace'

module Representer
  module_function

  def load(file)
    string = File.read(file)
    Parser.new.parse(string)
  end
end

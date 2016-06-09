module Representer
  class Plugin
    class_attribute :template_path, :output_path

    attr_reader :namespaces

    class << self
      delegate :register_plugin, to: Representer
    end

    def initialize(namespaces)
      @namespaces = namespaces
    end

    def generate
      template_path = self.class.template_path
      output_path = self.class.output_path

      raise RuntimeError.new, "#{template_path} is empty" unless template_path
      raise RuntimeError.new, "#{output_path} is empty" unless output_path

      result = ERB.new(template_path).result(binding)
      File.write(output_path, result)
    end
  end
end

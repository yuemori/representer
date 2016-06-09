module Representer
  class Plugin
    delegate :namespaces, :config, to: Representer

    class << self
      delegate :register_plugin, to: Representer

      attr_accessor :template_path, :output_path
    end

    def template
      @template ||= File.read(self.class.template_path)
    end

    def result
      @result ||= ERB.new(template, nil, '-').result(binding)
    end

    def generate
      File.write(self.class.output_path, result)
    end
  end
end

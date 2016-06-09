module Representer
  class MarkdownPlugin < Plugin
    register_plugin 'markdown', self

    self.template_path = File.expand_path('../templates/markdown.md.erb', __FILE__)
    self.output_path = File.expand_path('./schema.md', Dir.pwd)
  end
end

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc 'generate test'
task :generate_test do
  require 'bundler/setup'
  require 'representer'
  require 'representer/markdown_plugin'

  Representer.load File.expand_path('../spec/fixtures/user.conf', __FILE__)

  Representer.generate
end

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubygems/package_task'
require 'rake/extensiontask'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

Rake::ExtensionTask.new('character_set') do |ext|
  ext.lib_dir = 'lib/character_set'
end

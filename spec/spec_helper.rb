Ractor.new { nil }

require 'coverage'
Coverage.start

require 'bundler/setup'
Dir[File.join(__dir__, 'support', '*.rb')].sort.each { |file| require file }

require 'character_set'
require 'character_set/pure'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.after(:suite) do
    puts '', "COVERAGE SUM: #{Coverage.result.values.sum { |arr| arr.sum(&:to_i) }}"
  end
end

def sorted_set_class
  CharacterSet::RubyFallback::SortedSet
end

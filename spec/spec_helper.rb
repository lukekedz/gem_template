require 'simplecov'
SimpleCov.start # comment :nocov: ignores code block

require 'bundler/setup'
require 'gem_template'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.color     = true
  config.tty       = true
  config.formatter = :documentation
end

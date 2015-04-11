RSpec.configure do |config|
  config.fail_fast = true
  config.color = true
  # Added to suppress deprecation warnings for all the tests
  # by ARJ.
  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

end

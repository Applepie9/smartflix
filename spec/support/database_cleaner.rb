# frozen_string_literal: true

RSpec.configure do |config|
  config.before do
    DatabaseCleaner.strategy = :truncation
  end
end

# frozen_string_literal: true

require 'shoulda/matchers'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

# Shoulda matchers tries to handle Booleans in a way that is tightly coupled with AR which causes false warnings
# as we use Virtus for coercion, not AR. See: https://github.com/thoughtbot/shoulda-matchers/issues/761
Shoulda::Matchers::ActiveModel::ValidateInclusionOfMatcher.prepend(
  Module.new do
    def value_to_attribute_type(value)
      return :unknown if value.in?([true, false])

      super
    end
  end
)

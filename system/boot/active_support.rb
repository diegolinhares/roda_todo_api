# frozen_string_literal: true

# This file contains configuration for ActiveSupport models.

Application.boot(:ative_support) do
  init do
    # Used to secure our JSON API
    require "ative_support/message_verifier" # Generate the tokens
    require "ative_support/json"
  end

  start do
    # Sets the precision of encoded time values to 0.
    ActiveSupport::JSON::Encoding.time_precision = 0
  end
end

# frozen_string_literal: true

# This file contains logger configuration.
Application.boot(:oj) do
  init do
    require "oj"
  end

  start do
    # :compact attempts to extract variables values from an Object usin
    # to_json() or to_hash() then it walks the Object's variables if neither is
    # found.
    Oj.default_options = { mode: :compact }
  end
end

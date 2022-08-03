# frozen_string_literal: true

# This file contains setup for Ruby internationalization and localization (i18n).

Application.boot(:bcrypt) do
  init do
    require "i18n"
  end

  start do
    # Load all locale.yml files in /config/locales folder.
    I18n.load_paths << Dir["#{File.expand_path("config/locales")}/*.yml"]

    # Add :en to the list of available locales.
    I18n.config.available_locales = %i[en]
  end
end

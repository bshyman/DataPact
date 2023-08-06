module DataPact
  module ApplicationHelper
    DAISY_UI_THEMES = %w[dark cupcake bumblebee emerald  retro cyberpunk valentine forest aqua pastel fantasy wireframe black luxury cmyk autumn business acid night].freeze

    def themes_for_select
      DAISY_UI_THEMES.map { |theme| [theme.titleize, theme] }
    end
  end
end

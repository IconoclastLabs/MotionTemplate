Teacup::Stylesheet.new :settings do
  import :base

  v_padding = 10
  gradient_top_color = 0xc3a477.uicolor 
  gradient_bottom_color = 0x9f8061.uicolor

  # Commented out because it doesn't seem to play nicely with landscape
  #style :settings,
  #  gradient: { 
  #    colors: [gradient_top_color.CGColor, gradient_bottom_color.CGColor] 
  #  }

  style :label, extends: :custom_label,
    constraints: [
      :full_width,
      constrain_top(150)
    ],
    backgroundColor: :clear

end

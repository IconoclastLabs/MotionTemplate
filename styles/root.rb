Teacup::Stylesheet.new :root do
  import :base

  v_padding = 10

  style :label, extends: :custom_label,
    constraints: [
      :full_width,
      constrain_top(50)
    ],
    backgroundColor: :clear

  style :long_button, extends: :custom_long_button,
    constraints: [
      constrain_below(:label).plus(v_padding),
      constrain(:center_x).equals(:superview, :center_x)
    ]

  style :button, extends: :custom_button,
    constraints: [
      constrain_below(:long_button).plus(v_padding),
      # Position at half of middle (q1)
      constrain(:center_x).equals(:superview, :center_x).times(0.5),
      constrain(:left).equals(:superview, :left).plus(10)
    ]

  style :switch, extends: :custom_switch,
    constraints: [
      constrain_below(:long_button).plus(v_padding * 2),
      # Position at Middle + half (75%)
      constrain(:center_x).equals(:superview, :center_x).times(1.5)
    ]

  style :color_button, extends: :custom_color_button,
    constraints: [
      :full_width,
      constrain_below(:button).plus(v_padding)
    ]

  style :texture_segmented, extends: :custom_texture_segmented,
    constraints: [
      constrain_below(:color_button).plus(v_padding),
      constrain(:center_x).equals(:superview, :center_x)
    ]

  style :segmented, extends: :custom_segmented,
    constraints: [
      constrain_below(:texture_segmented).plus(v_padding),
      constrain(:center_x).equals(:superview, :center_x)
    ]
end

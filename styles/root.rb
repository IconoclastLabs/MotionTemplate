Teacup::Stylesheet.new :root do
  import :base

  v_padding = 10

  style :label,
    text: 'App Stuff!',
    backgroundColor: :clear,
    numberOfLines: 0,
    font: :bold.uifont(40),
    textColor: :white,
    shadowColor: :black,
    textAlignment: UITextAlignmentCenter,
    constraints: [
      :full_width,
      constrain_top(50)
    ],
    layer: {
      transform: identity,
      shadowRadius: 20,
      shadowOpacity: 0.5,
      masksToBounds: false
    }

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
end

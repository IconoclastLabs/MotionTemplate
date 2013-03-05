Teacup::Stylesheet.new(:root) do
  back_color = 0xc3a477.uicolor 
  v_padding = 10

  style UIView,
    backgroundColor: back_color,
    nav_background: 'custom_nav'

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

  style :custom_long_button,
    constraints: [
      constrain_below(:label).plus(v_padding),
      constrain(:center_x).equals(:superview, :center_x)
    ],
    width: 292,
    height: 42,
    title: "Custom Long Button",
    button_background: 'large_button'

  style :custom_button,
    constraints: [
      constrain_below(:custom_long_button).plus(v_padding),
      # Position at half of middle (q1)
      constrain(:center_x).equals(:superview, :center_x).times(0.5),
      constrain(:left).equals(:superview, :left).plus(10)
    ],
    width: 142,
    height: 34,
    title: "Custom Button",
    button_background: 'button'

  style :custom_switch,
    constraints: [
      constrain_below(:custom_long_button).plus(v_padding * 2),
      # Position at Middle + half (75%)
      constrain(:center_x).equals(:superview, :center_x).times(1.5)
    ],
    onImage: 'switch'.uiimage,
    offImage: 'switch_off'.uiimage,
    on: true

end

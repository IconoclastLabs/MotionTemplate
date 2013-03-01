
Teacup::Stylesheet.new(:iphone) do
  back_color = 0xc3a477.uicolor 

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
    top: 0,
    left: 0,
    width: 320,
    height: 400,
    layer: {
      transform: identity,
      shadowRadius: 20,
      shadowOpacity: 0.5,
      masksToBounds: false
    }

  style :custom_button,
    frame: [[15,310],[292,42]],
    title: "Custom Button",
    button_background: 'large_button',
    backgroundColor: :clear
end
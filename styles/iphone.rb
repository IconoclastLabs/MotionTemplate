
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

  style :custom_long_button,
    top: 350,
    left: 15,
    width: 292,
    height: 42,
    title: "Custom Long Button",
    button_background: 'large_button',
    backgroundColor: :clear

  style :custom_button,
    top: 310,
    left: 15,
    width: 142,
    height: 34,
    title: "Custom Button",
    button_background: 'button',
    backgroundColor: :clear

  style :custom_switch,
    frame: [[200,313],[0,0]]

end
Teacup::Stylesheet.new :base do
  back_color = 0xc3a477.uicolor 

  style UIView,
    backgroundColor: back_color,
    nav_background: 'custom_nav'

  style :custom_long_button,
    width: 292,
    height: 42,
    title: "Custom Long Button",
    button_background: 'large_button'

  style :custom_button,
    width: 142,
    height: 34,
    title: "Custom Button",
    button_background: 'button'

  style :custom_switch,
    onImage: 'switch'.uiimage,
    offImage: 'switch_off'.uiimage,
    on: true
end
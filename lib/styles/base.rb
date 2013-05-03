Teacup::Stylesheet.new :base do
  back_color = 0xc3a477.uicolor 
  dark_color = 0x4d3e33.uicolor
  mid_color = 0x9f8061.uicolor

  style UIView,
    backgroundColor: 'background'.uicolor,
    nav_background: {
      normal: 'custom_nav',
      landscape: 'custom_landscape_nav'
      },
    nav_btn_tint: mid_color

  style :custom_label,
    text: 'App Stuff!',
    backgroundColor: :clear,
    numberOfLines: 0,
    font: :bold.uifont(40),
    textColor: :white,
    shadowColor: :black,
    textAlignment: UITextAlignmentCenter,
    layer: {
      transform: identity,
      shadowRadius: 20,
      shadowOpacity: 0.5,
      masksToBounds: false
    }

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

  style :color_button,
    backgroundColor: mid_color,
    title: "Custom Color Button - No Images",
    height: 34,
    layer: {
      borderColor: dark_color,
      borderWidth: 0.5,
      cornerRadius: 10
    }

  style :settings_button,
    button_background: 'gear',
    height: 18,
    width: 18,
    backgroundColor: :clear

  style :custom_segmented,
    tintColor: mid_color

  style :custom_texture_segmented,
    texture: {
        segmentImage: 'segment',
        backgroundOn: 'button'
      }

  style :custom_slider,
      texture: {
        minImage: 'slider',
        maxImage: 'slider_off',
        thumbImage: 'knob'
      },
      value: 0.5

  style :custom_title,
    frame: [[0,0],[300, 40]],
    font: "SnellRoundhand".uifont(26),
    text: "Motion Template",
    textColor: :white,
    textAlignment: :center,
    backgroundColor: :clear,
    shadowColor: :black,
    adjustsFontSizeToFitWidth: true
end
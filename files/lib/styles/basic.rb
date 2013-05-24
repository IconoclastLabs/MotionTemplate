Teacup::Stylesheet.new :basic do
  @back_color = :white
  @dark_color = 0x2a487f.uicolor 
  @mid_color = 0x8ea1bc.uicolor

  style UIView,
    backgroundColor: 'basice/neutral'.uicolor

  style :custom_label,
    text: 'App Stuff!',
    backgroundColor: :clear,
    numberOfLines: 0,
    font: :bold.uifont(40),
    textColor: @dark_color,
    shadowColor: :black,
    textAlignment: UITextAlignmentCenter,
    layer: {
      masksToBounds: false
    }

  style :custom_long_button,
    width: 292,
    height: 42,
    title: "Custom Long Button"

  style :custom_button,
    width: 142,
    height: 34,
    title: "Custom Button"

  style :custom_switch,
    on: true

  style :color_button,
    backgroundColor: @mid_color,
    title: "Custom Color Button - No Images",
    height: 34,
    layer: {
      borderColor: @dark_color,
      borderWidth: 0.5,
      cornerRadius: 10
    }

  style :settings_button,
    title: "+",
    height: 30,
    width: 30,
    backgroundColor: :clear

  style :custom_segmented,
    tintColor: @mid_color

  style :custom_texture_segmented

  style :custom_slider,
      value: 0.5

  style :custom_title,
    frame: [[0,0],[300, 40]],
    font: "ArialRoundedMTBold".uifont(26),
    text: "Motion Template",
    textColor: :white,
    textAlignment: :center,
    backgroundColor: :clear,
    shadowColor: :black,
    adjustsFontSizeToFitWidth: true
end
Teacup::Stylesheet.new :settings do
  import AppProperties.root_style

  v_padding = 10
  h_padding = 10
  gradient_top_color = 0xc3a477.uicolor 
  gradient_bottom_color = 0x9f8061.uicolor
  twitter_blue = 0x4099ff.uicolor

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

  style :twitter_label,
    constraints: [
      :center_x,
      constrain_below(:label)
    ],
    backgroundColor: :clear,
    attributedText: :twitter.awesome_icon + ' @IconoclastLabs',
    textColor: twitter_blue

  style :site_button,
    constraints: [
      :center_x,
      constrain_below(:twitter_label)
    ],
    #button normal state
    normal: { 
      attributed: :beaker.awesome_icon + ' Iconoclast Labs Website' 
    }

  style :share_button,
    constraints: [
      :center_x,
      constrain_below(:site_button)
    ], 
    #button normal state
    normal: {
      attributed: :share.awesome_icon + ' Share This'
    } 

end

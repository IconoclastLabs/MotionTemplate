
Teacup::Stylesheet.new(:iphone) do
  back_color = UIColor.lightGrayColor

  style UIView,
    backgroundColor: back_color,
    nav_background: 'custom_nav'

  style :label,
    text: 'App Stuff!',
    backgroundColor: UIColor.clearColor,
    numberOfLines: 0,
    font: UIFont.boldSystemFontOfSize(40),
    textColor: UIColor.whiteColor,
    shadowColor: UIColor.blackColor,
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

end
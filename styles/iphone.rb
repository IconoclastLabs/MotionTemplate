
Teacup::Stylesheet.new(:iphone) do
  back_color = UIColor.lightGrayColor

  style UINavigationBar,
    background: 'custom_nav'

  style UIView,
    backgroundColor: back_color

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
    },
    landscape_left: {
      layer: {
        transform: rotate(identity, pi/6, 0.3, 0.3, 0.3)
      }
    }

end
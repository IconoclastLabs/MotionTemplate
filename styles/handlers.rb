Teacup.handler UIView, :nav_background { |image|
  # I'm using `.uiimage` here - you could also check for a string and
  # use UIImage.imageNamed if you aren't using sugarcube
  UINavigationBar.appearance.setBackgroundImage(image.uiimage, forBarMetrics:UIBarMetricsDefault)
}

Teacup.handler UIView, :nav_tint { |color|
 	UIBarButtonItem.appearance.setTintColor(color)
}

Teacup.handler UIRoundedRectButton, :button_background { |view, image, text_color|
  text_color ||= UIColor.whiteColor
  view.setBackgroundImage(image.uiimage, forState:UIControlStateNormal)
  view.setTitleColor(text_color, forState:UIControlStateNormal)
}
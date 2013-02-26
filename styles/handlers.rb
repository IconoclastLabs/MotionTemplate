Teacup.handler UINavigationBar, :background { |image|
  # I'm using `.uiimage` here - you could also check for a string and
  # use UIImage.imageNamed if you aren't using sugarcube
  appearance.setBackgroundImage(image.uiimage, forBarMetrics:UIBarMetricsDefault)
}
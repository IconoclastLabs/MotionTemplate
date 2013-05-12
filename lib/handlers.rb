Teacup.handler UIView, :nav_background do |view, hash|
  UINavigationBar.appearance.setBackgroundImage(hash[:normal].uiimage, forBarMetrics:UIBarMetricsDefault)
  UINavigationBar.appearance.setTitleVerticalPositionAdjustment(4.0, forBarMetrics:UIBarMetricsDefault)
  UINavigationBar.appearance.setBackgroundImage(hash[:landscape].uiimage, forBarMetrics:UIBarMetricsLandscapePhone)
  UINavigationBar.appearance.setTitleVerticalPositionAdjustment(7.0, forBarMetrics:UIBarMetricsLandscapePhone)
end

Teacup.handler UIRoundedRectButton, :button_background do |view, image, text_color|
  text_color ||= UIColor.whiteColor
  view.setBackgroundImage(image.uiimage, forState:UIControlStateNormal)
  view.setTitleColor(text_color, forState:UIControlStateNormal)
end

Teacup.handler UISegmentedControl, :texture do |view, hash|
	view.setDividerImage(hash[:segmentImage].uiimage, forLeftSegmentState: UIControlStateSelected, rightSegmentState: UIControlStateNormal, barMetrics: UIBarMetricsDefault)
	view.setBackgroundImage(hash[:backgroundOn].uiimage, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
end

Teacup.handler UISlider, :texture do |view, hash|
	UISlider.appearance.setMinimumTrackImage(hash[:minImage].uiimage, forState:UIControlStateNormal)
	UISlider.appearance.setMaximumTrackImage(hash[:maxImage].uiimage, forState:UIControlStateNormal)
	UISlider.appearance.setThumbImage(hash[:thumbImage].uiimage, forState:UIControlStateNormal)
end

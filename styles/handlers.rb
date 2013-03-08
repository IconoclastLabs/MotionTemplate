Teacup.handler UIView, :nav_background do |image|
  UINavigationBar.appearance.setBackgroundImage(image.uiimage, forBarMetrics:UIBarMetricsDefault)
end

Teacup.handler UIView, :nav_btn_tint do |color|
 	UIBarButtonItem.appearance.setTintColor(color)
end

Teacup.handler UIRoundedRectButton, :button_background do |view, image, text_color|
  text_color ||= UIColor.whiteColor
  view.setBackgroundImage(image.uiimage, forState:UIControlStateNormal)
  view.setTitleColor(text_color, forState:UIControlStateNormal)
end

Teacup.handler UISegmentedControl, :backgroundOn do |view, image, segment_image|
	segment_image ||= 'segment'.uiimage
	view.setDividerImage(segment_image.uiimage, forLeftSegmentState: UIControlStateSelected, rightSegmentState: UIControlStateNormal, barMetrics: UIBarMetricsDefault)
	view.setBackgroundImage(image.uiimage, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
end


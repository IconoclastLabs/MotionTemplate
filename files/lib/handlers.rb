Teacup.handler UIView, :nav_background do |view, hash|
  UINavigationBar.appearance.setBackgroundImage(hash[:normal].uiimage, forBarMetrics:UIBarMetricsDefault)
  UINavigationBar.appearance.setTitleVerticalPositionAdjustment(-10.0, forBarMetrics:UIBarMetricsDefault)
  UINavigationBar.appearance.setBackgroundImage(hash[:landscape].uiimage, forBarMetrics:UIBarMetricsLandscapePhone)
  UINavigationBar.appearance.setTitleVerticalPositionAdjustment(7.0, forBarMetrics:UIBarMetricsLandscapePhone)
end

Teacup.handler UIButton, :button_background do |view, image, text_color|
  text_color ||= UIColor.whiteColor
  view.setBackgroundImage(image.uiimage, forState:UIControlStateNormal)
  view.setTitleColor(text_color, forState:UIControlStateNormal)
end

Teacup.handler UISegmentedControl, :texture do |view, hash|
	view.setDividerImage(hash[:segmentImage].uiimage, forLeftSegmentState: UIControlStateSelected, rightSegmentState: UIControlStateNormal, barMetrics: UIBarMetricsDefault)
	view.setBackgroundImage(hash[:backgroundOn].uiimage, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
  settings = NSMutableDictionary.alloc.init
  settings.setValue(UIColor.whiteColor, forKey:UITextAttributeTextColor)
  #settings = NSDictionary.dictionaryWithObjectsAndKeys(UIColor.whiteColor, UITextAttributeTextColor, UIColor.colorWithRed(1.0,green:1.0,blue:1.0,alpha:1.0), UITextAttributeTextShadowColor, NSValue.valueWithUIOffset(UIOffsetMake(0, 1)), UITextAttributeTextShadowOffset, UIFont.fontWithName("AmericanTypewriter",size:0.0), UITextAttributeFont, nil )
  UISegmentedControl.appearance.setTitleTextAttributes(NSDictionary.dictionaryWithDictionary(settings), forState:UIControlStateNormal)
end

Teacup.handler UISlider, :texture do |view, hash|
	UISlider.appearance.setMinimumTrackImage(hash[:minImage].uiimage, forState:UIControlStateNormal)
	UISlider.appearance.setMaximumTrackImage(hash[:maxImage].uiimage, forState:UIControlStateNormal)
	UISlider.appearance.setThumbImage(hash[:thumbImage].uiimage, forState:UIControlStateNormal)
end

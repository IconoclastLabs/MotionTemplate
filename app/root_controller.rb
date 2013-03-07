class RootController < UIViewController
  stylesheet :root

  layout :root do
    @label = subview(UILabel, :label)
    @button = subview(UIButton.rounded_rect, :button)
    @long_button = subview(UIButton.rounded_rect, :long_button)
    @switch = subview(UISwitch, :switch)
    @color_button = subview(UIButton.custom, :color_button)
    @gear = subview(UIButton.rounded_rect, :settings_button)
  end  


  def viewDidLoad
  	super
  	# Title for this view
  	self.title = "MotionTemplate"

  	# Use custom button for navigation button
  	@nav_bar_button = UIBarButtonItem.alloc.initWithCustomView(@gear)
    self.navigationItem.rightBarButtonItem = @nav_bar_button
  end
end

class RootController < UIViewController
  stylesheet :root

  layout :root do
    @label = subview(UILabel, :label)
    @button = subview(UIButton.rounded_rect, :button)
    @long_button = subview(UIButton.rounded_rect, :long_button)
    @switch = subview(UISwitch, :switch)
    @color_button = subview(UIButton.custom, :color_button)
    @gear = subview(UIButton.rounded_rect, :settings_button)
    @seg = subview(UISegmentedControl.bar(["one","two","three"]), :segmented)
    @texture_seg = subview(UISegmentedControl.bar(["I","use","an","image!"]), :texture_segmented)
  end  


  def viewDidLoad
  	super
  	# Title for this view
  	self.title = "Motion Template"

  	# Use custom button for navigation button
  	@gear.addTarget(self, action:'push_settings', forControlEvents:UIControlEventTouchUpInside)
  	@nav_bar_button = UIBarButtonItem.alloc.initWithCustomView(@gear)
    self.navigationItem.rightBarButtonItem = @nav_bar_button
  end

  def push_settings
  	@settings = SettingsController.alloc.init 
  	self.navigationController.pushViewController(@settings, animated: true)
  end
end

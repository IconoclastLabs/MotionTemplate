class RootController < UIViewController
  stylesheet :root

  # Layout code via teacup
  layout :root do
    @label = subview(UILabel, :label)
    @button = subview(UIButton, :button)
    @long_button = subview(UIButton, :long_button)
    @switch = subview(UISwitch, :switch)
    @color_button = subview(UIButton.custom, :color_button)
    @gear = subview(UIButton, :settings_button)
    @seg = subview(UISegmentedControl.bar(["one","two","three"]), :segmented)
    @texture_seg = subview(UISegmentedControl.bar(["I","use","an","image!"]), :texture_segmented)
    @slider = subview(UISlider, :slider)
  end  


  def layoutDidLoad
    # Custom Navigation Title
    @custom_label = layout(UILabel, :custom_title)
    self.navigationItem.titleView = @custom_label

    # Fix for iOS7 navigation
    self.edgesForExtendedLayout = UIRectEdgeNone

  	# Use custom button for navigation button
  	@gear.addTarget(self, action:'push_settings', forControlEvents:UIControlEventTouchUpInside)
  	@nav_bar_button = UIBarButtonItem.alloc.initWithCustomView(@gear)
    self.navigationItem.rightBarButtonItem = @nav_bar_button
  end

  def push_settings
  	@settings = SettingsController.new
  	self.navigationController << @settings
  end
end

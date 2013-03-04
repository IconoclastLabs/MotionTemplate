class RootController < UIViewController
  stylesheet :iphone

  layout :root do
    @label = subview(UILabel, :label)
    @button = subview(UIButton.rounded_rect, :custom_button)
    @long_button = subview(UIButton.rounded_rect, :custom_long_button)
    @switch = subview(UISwitch, :custom_switch)
  end  


  def viewDidLoad
  	super
  	self.title = "MotionTemplate"
  	@switch.on = true
  end
end

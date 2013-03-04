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
  	@switch.onImage = 'switch'.uiimage
  	@switch.offImage = 'switch_off'.uiimage
  	@switch.on = true
  end
end

class RootController < UIViewController
  stylesheet :root

  layout :root do
    @label = subview(UILabel, :label)
    @button = subview(UIButton.rounded_rect, :custom_button)
    @long_button = subview(UIButton.rounded_rect, :custom_long_button)
    @switch = subview(UISwitch, :custom_switch)
  end  


  def viewDidLoad
  	super
  	self.title = "MotionTemplate"
  end
end

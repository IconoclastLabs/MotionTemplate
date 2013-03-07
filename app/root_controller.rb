class RootController < UIViewController
  stylesheet :root

  layout :root do
    @label = subview(UILabel, :label)
    @button = subview(UIButton.rounded_rect, :button)
    @long_button = subview(UIButton.rounded_rect, :long_button)
    @switch = subview(UISwitch, :switch)
    @color_button = subview(UIButton.custom, :color_button)
  end  


  def viewDidLoad
  	super
  	self.title = "MotionTemplate"
  end
end

class RootController < UIViewController
  stylesheet :iphone

  layout :root do
    @a = subview(UILabel, :label)
    @button = subview(UIButton.rounded_rect, :custom_button)
    @long_button = subview(UIButton.rounded_rect, :custom_long_button)
  end  


  def viewDidLoad
  	super
  	self.title = "MotionTemplate"
  end
end

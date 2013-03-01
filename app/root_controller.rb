class RootController < UIViewController
  stylesheet :iphone

  layout :root do
    @a = subview(UILabel, :label)
    @button = subview(UIButton.rounded_rect, :custom_button)
  end  


  def viewDidLoad
  	super
  	self.title = "Taco"
  end
end

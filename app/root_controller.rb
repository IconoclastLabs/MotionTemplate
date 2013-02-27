class RootController < UIViewController
  stylesheet :iphone

  layout :root do
    @a = subview(UILabel, :label)
  end  


  def viewDidLoad
  	super
  	self.title = "Taco"
  end
end

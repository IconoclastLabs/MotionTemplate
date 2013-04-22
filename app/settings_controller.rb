class SettingsController < UIViewController
  include MotionAwesome
  stylesheet :settings

  layout :settings do
    @label = subview(UILabel, :label)
  end  

  def viewDidLoad
  	# Create Motion Awesome Icons!  
  	# Cautionary note:  Do this before the styles of Teacup have been applied, to utilize Teacup.  
  	# ^ thats why we're using viewDidLoad w/ super  instead of layoutDidLoad
  	twitter = label( :twitter, size: 40) do |label|
  		label.stylename = :test
  		self.view.addSubview(label)
  	end

  	super
  end
end
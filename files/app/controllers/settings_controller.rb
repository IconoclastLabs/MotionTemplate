class SettingsController < UIViewController
  stylesheet :settings

  layout :settings do
    @label = subview(UILabel, :label)
    @twitter = subview(UILabel, :twitter_label)
    @site_button = subview(UIButton.rounded_rect, :site_button)
  end  

  def layoutDidLoad

  	self.title = "Normal Title"
  	
  	@site_button.on(:touch) do
  		"http://www.IconoclastLabs.com".nsurl.open
  	end
  end

end
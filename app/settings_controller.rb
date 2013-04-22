class SettingsController < UIViewController
  stylesheet :settings

  layout :settings do
    @label = subview(UILabel, :label)
    @twitter = subview(MotionAwesome.label(:twitter, text: '@IconoclastLabs'), :twitter_label)
    @site_button = subview(MotionAwesome.button(:beaker, text: 'Iconoclast Labs Website'), :site_button)
  end  

  def layoutDidLoad
  	@site_button.on(:touch) do
  		"http://www.IconoclastLabs.com".nsurl.open
  	end
  end

end
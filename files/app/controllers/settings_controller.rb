class SettingsController < UIViewController
  stylesheet :settings

  layout :settings do
    @label = subview(UILabel, :label)
    @twitter = subview(UILabel, :twitter_label)
    @site_button = subview(UIButton.rounded_rect, :site_button)
    @share_button = subview(UIButton.rounded_rect, :share_button)
  end  

  def layoutDidLoad

  	self.title = "Normal Title"
  	
  	@site_button.on(:touch) do
  		"http://www.IconoclastLabs.com".nsurl.open
  	end

    @share_button.on(:touch) do
      export_actions
    end
  end

  # Build export actionsheet
  def export_actions
    @buttons = ['Cancel', nil]
    social_options = {"Twitter" => SLServiceTypeTwitter, "Facebook" => SLServiceTypeFacebook, "SinaWeibo" => SLServiceTypeSinaWeibo}
    # add social when available
    social_options.each do |social|
      # dup the element because it will try to pass reference to frozen asset
      @buttons << social[0].dup if SLComposeViewController.isAvailableForServiceType(social[1])
    end
    @export_sheet = UIActionSheet.alert(nil, buttons: @buttons,
      cancel: proc {ap "Cancel"  },
      destructive: nil,
      success: proc do |pressed|
        if social_options.include? pressed
          social_media_post(social_options[pressed])
        end
      end
    )
  end

  # Perform export action
  def social_media_post service
    ap "load social media sheet for #{service}"
    social_controller = SLComposeViewController.composeViewControllerForServiceType(service)
    social_controller.setInitialText("@IconoclastLabs ROX!")
    social_controller.addURL("http://www.IconoclastLabs.com".nsurl)
    social_controller.completionHandler = lambda do |result|
      case result
        when SLComposeViewControllerResultDone
          ap "Social post successful"
        when SLComposeViewControllerResultCancelled
          ap "Social post cancelled"
      end
    end
    presentModalViewController(social_controller, animated:true)
  end
end
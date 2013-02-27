class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    myNavController = RootController.alloc.init

    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(myNavController)
    @window.rootViewController.wantsFullScreenLayout = true
    #Splash Screen
    image_view = UIImageView.alloc.initWithImage('Default'.uiimage) # automatically grabs correct image for phone
    @window.rootViewController.view << image_view
    @window.rootViewController.view.bringSubviewToFront(image_view)
    # normal
    @window.makeKeyAndVisible

    # fade out splash image
    image_view.fade_out (duration: 1.0,
                          delay: 0.2,
                          options: UIViewAnimationOptionCurveLinear,
                          opacity: 0) {
      image_view.removeFromSuperview
      image_view = nil #little extra cleanup
    }
    true
  end
end

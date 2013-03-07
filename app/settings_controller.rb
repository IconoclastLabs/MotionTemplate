class SettingsController < UIViewController
  stylesheet :settings

  layout :settings do
    @label = subview(UILabel, :label)
  end  

end
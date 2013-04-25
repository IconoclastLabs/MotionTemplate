class AppProperties
  VERSION = '1.4'
  SKU_NAME = 'motiontemplate' #default
  COMPANY_NAME = 'com.iconoclastlabs.'

  def name
    'Motion Template'
  end

  def version
    VERSION
  end

  def major_version
    VERSION.scan(/\d+/).first
  end

  def frameworks
    []
  end

  def contributors
    ["Gant Laborde", "Matt Garrison"]
  end

  def developer_certificate
    "iPhone Developer: Matt Garrison (EUS6PB7N8V)"
  end

  def distribution_certificate
    "iPhone Distribution: Iconoclast Labs LLC"
  end

  def provisioning
    './provisioning' #symlink is custom to each user's machine
  end

  def deployment_target
    '6.0'
  end


  def delegate
    'app_delegate'
  end

  def prerendered_icon
    true
  end

  def devices
    [:iphone]
  end

  def identifier
    COMPANY_NAME + SKU_NAME
  end

  def description
    %W[
      Well whatya know?  This description is here for ya.  ENJOY!
    ]
  end

  # def orientations
  #   [:portrait, :landscape_left, :landscape_right] #:portrait_upside_down
  # end

  # def icons
  #   icn = ["#{self.name}.png", "#{self.name}-72.png", "#{self.name}@2x.png"]
  # end
end
class AppProperties
  VERSION = '1.7'
  SKU_NAME = 'motiontemplate' 
  COMPANY_NAME = 'com.iconoclastlabs.'

  def name
    'Motion Template'
  end

  def version
    VERSION
  end

  def self.root_style
    :base_leather # could also be - :basic
  end

  def frameworks
    ['MessageUI', 'Social', 'Accounts']
  end

  def contributors
    ["Gant Laborde", "Matt Garrison"]
  end

  def developer_certificate
    "iPhone Developer: Matt Garrison"
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

  # add folders outside of /app
  def additional_folders
    ['lib']
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

  # add all files from folders in additional_folders
  def render_files app
    more_files = []
    additional_folders.each do |folder|
      more_files += Dir.glob(File.join(app.project_dir, "#{folder}/**/*.rb"))
    end
    more_files
  end

  def major_version
    VERSION.scan(/\d+/).first
  end
end

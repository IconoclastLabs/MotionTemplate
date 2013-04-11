# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'
require 'sugarcube-568'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Motion Template'
  app.device_family = [:iphone]
  app.deployment_target = '6.0'
  app.version = '1.0'
  app.short_version = '1.0'
  app.prerendered_icon = true

  #include styles
  app.files += Dir.glob(File.join(app.project_dir, 'lib/**/*.rb'))

end

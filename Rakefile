# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'
require 'sugarcube'
require 'teacup'
require 'sweettea'
require 'sugarcube-568'
require 'bubble-wrap'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Template'

  #include styles
  app.files += Dir.glob(File.join(app.project_dir, 'styles/**/*.rb'))
end

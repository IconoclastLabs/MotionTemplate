# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bundler'
Bundler.require
require 'sugarcube-common'
require 'sugarcube-awesome'

require './lib/app_properties'
props = AppProperties.new


Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = props.name
  app.deployment_target = props.deployment_target
  app.identifier = props.identifier

  app.version = props.version
  app.short_version = props.version #required to be incremented for AppStore (http://iconoclastlabs.com/cms/blog/posts/updating-a-rubymotion-app-store-submission)
  app.device_family = props.devices
  #app.icons = props.icons
  #app.provisioning_profile = props.provisioning
  app.release do
    app.codesign_certificate = props.distribution_certificate
  end
  # app.development do
  #   app.codesign_certificate = props.developer_certificate
  # end
  # include external files
  app.files += props.render_files(app)

  app.frameworks += props.frameworks
  app.prerendered_icon = props.prerendered_icon

  # workaround for a RM bug and Bubblewrap, should be solved in the next RM release
  #app.detect_dependencies = false
end

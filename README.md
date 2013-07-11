# MotionTemplate #

[![Build Status](https://api.travis-ci.org/IconoclastLabs/MotionTemplate.png)](https://travis-ci.org/IconoclastLabs/MotionTemplate)

## iOS7 Note
*I've started fixing MotionTemplate to not suck on iOS7... I need help.  [See branch here](https://github.com/IconoclastLabs/MotionTemplate/tree/ios7)*

### About
*Motion Template is a strightforward clean template for loading useful gems and skinned UI items.  It's an excellent starting point for building
your RubyMotion application.  Simply strip out the features you don't need, and start implementing your app on this robust RM 2.0 template!*

### To Install And Use Template
You can use this template straight off github if you have RubyMotion >= 2.3 (if repo already exists it will do a `git pull`)
  `$ motion create --template=git@github.com:IconoclastLabs/MotionTemplate.git <myappname>`

### External Dependencies
The *motion-rubberstamp* gem relies on imagemagick and ghostscript, which
can easily be installed via [Homebrew](http://mxcl.github.io/homebrew/):

    $ brew install imagemagick

    $ brew install ghostscript
    
Otherwise you'll need to comment out this gem.
________________________

#### GEMS ####
* [Teacup v2](https://github.com/rubymotion/teacup) - DSL for CSS-esque styling.
* [Bubblewrap](https://github.com/rubymotion/BubbleWrap) - A collection of (tested) helpers and wrappers used to wrap CocoaTouch code and provide more Ruby like APIs.
* [Sugarcube v1rc](https://github.com/rubymotion/sugarcube) - Simplification and shortcuts for iOS annoyances and verbosity.
* [Sweettea](https://github.com/colinta/sweettea) - Coercion and further Sugarcube magic/shortcuts in Teacup's DSL via Handlers.
* [Motion Awesome Print](https://github.com/michaeldv/awesome_print_motion) - Awesome print `ap` for RubyMotion.  Colorized, Multi-line, Detailed print inspection.
* [Motion Awesome](https://github.com/derailed/motion-awesome) - The impressive icon set of Font-Awesome imported and ready to use inside of your Motion Project.
* [Motion-Rubberstamp](https://github.com/IconoclastLabs/motion-rubberstamp) - Run `rake rubberstamp:run` to stamp your versions right onto your icons for dev!

#### Conventions ####
* [Splash Screen](https://github.com/IconoclastLabs/SplashMotion) - Implemented Splash screen logic, ready to go!
* [iOS 6 Autolayout](http://developer.apple.com/library/ios/#recipes/xcode_help-interface_builder/articles/UnderstandingAutolayout.html) - Using Auto Layout via Teacup's constrains to help the UI to flow and scale as needed.
* [AppProperties Class](http://rubysource.com/rubymotion-workflow-customizations/) - The rakefile has been generalized and most configurations are in the `app_properties.rb` for clarity.  Don't forget to point provisioning to a symlink (allowing multiple users for the same source).
* [Custom UI Skins](http://graphicriver.net/item/ui-pack-for-ios-by-rebirthpixel/2577167?WT.ac=search_thumb&WT.seg_1=search_thumb&WT.z_author=rebirthpixel) - Using custom styling so you can quickly change the application flavor.
  * Base Leather
  * Basic
  * More to come!?  Fork us!

________________________

![MotionTemplate Screenshot](http://i.imgur.com/dciswLo.png "MotionTemplate")
![MotionTemplate Settings](http://i.imgur.com/udLvcgu.png "MotionTemplateSettings")

## Themes ##
Change the style in `AppProperties` so you can implement multiple themes.  Here's setting the `self.root_style` to `:basic` 
![MotionTemplate Basic](http://i.imgur.com/ZsRKqLW.png "MotionTemplateBasic")

## Requirements ##

* Requires RubyMotion 2.0 (see [Tag for rubymotion 1.x](https://github.com/IconoclastLabs/MotionTemplate/tree/rm1.x) if you are not 2.0 - Not a template just a project) 
* This is a RubyMotion Project with all dependencies listed in [the Gem file](https://github.com/IconoclastLabs/MotionTemplate/blob/master/Gemfile).
* *iOS 6 or greater is mandatory* If you'd like to use this project for older iOS releases you'll need to remove all autolayout and replace with hardcoded widths/heights/tops/lefts.
* *imagemagick and ghostscript* Are needed if you plan on using [Motion-Rubberstamp](https://github.com/IconoclastLabs/motion-rubberstamp) to stamp your icons.

## Copyright License ##

The graphical assets are not permitted for redistribution.  We bought
the license to use them here, and their extraction or reuse is not permitted
under our purchase license.

The code is completely open under MIT License.

See [LICENSE](https://github.com/IconoclastLabs/MotionTemplate/blob/master/LICENSE) file for full details.

## Requests and Credits ##
As always we're opent to pull requests/issues!

Special thanks to Colin T.A. Gray for answering questions and writing/maintaining some of the key gems in this project.

The outdated but original blog post on this Template can be found here: Blog on the original template: [http://iconoclastlabs.com/cms/blog/posts/rubymotion-template](http://iconoclastlabs.com/cms/blog/posts/rubymotion-template)

If you'd like to send inquiries, compliments or criticisms you can find us here
![contact](https://s3.amazonaws.com/iconoclastweb/email_pic.png)

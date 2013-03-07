# MotionTemplate #

Strightforward clean template for loading useful gems and skinned UI items.
* [Teacup](https://github.com/rubymotion/teacup) - DSL for CSS-esque styling.
* [Bubblewrap](https://github.com/rubymotion/BubbleWrap) - A collection of (tested) helpers and wrappers used to wrap CocoaTouch code and provide more Ruby like APIs.
* [Sugarcube](https://github.com/rubymotion/sugarcube) - Simplification and shortcuts for iOS annoyances and verbosity.
* [Sweettea](https://github.com/colinta/sweettea) - Coercion and further Sugarcube magic/shortcuts in Teacup's DSL via Handlers.
* [Splash Screen](https://github.com/IconoclastLabs/SplashMotion) - Implemented Splash screen logic, ready to go!
* [Custom UI Skins](http://graphicriver.net/item/ui-pack-for-ios-by-rebirthpixel/2577167?WT.ac=search_thumb&WT.seg_1=search_thumb&WT.z_author=rebirthpixel) - Using custom styling so you can quickly change the application flavor.
* [iOS 6 Autolayout](http://developer.apple.com/library/ios/#recipes/xcode_help-interface_builder/articles/UnderstandingAutolayout.html) - Using Auto Layout via Teacup's constrains to help the UI to flow and scale as needed.

![MotionTemplate Screenshot](http://i.imgur.com/OB7JR0i.png "MotionTemplate")

## Requirements ##

This is a RubyMotion Project with all dependencies listed in the Gem file.

Additionally, since we're using Autolayout, so iOS 6 or greater is manditory.  If you'd like to use this project for older iOS releases you'll need to remove all autolayout and replace with hardcoded widths/heights/tops/lefts.

## Copyright License ##

The graphical assets are not permitted for redistribution.  We bought
the license to use them here, and their extraction or reuse is not permitted
under our purchase license.

The code is completely open under MIT License.

See LICENSE file for full details.

## Faults ##
This application is far from completed.  It has the following faults:
* Landscape mode repeats the navigation background image.  Would be nice to either get a bigger image to replace, or have it drop out and go to a tinted background.
* Gear settings icon is too snug to the top right.  Can't seem to style it with constraints.
* Would be awesome to remove all viewDidLoad logic into the Teacup styles.
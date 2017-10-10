# DialogBox

[![Version](https://img.shields.io/cocoapods/v/DialogBox.svg?style=flat)](http://cocoapods.org/pods/DialogBox)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/DialogBox.svg?style=flat)](http://cocoapods.org/pods/DialogBox)
[![Platform](https://img.shields.io/cocoapods/p/DialogBox.svg?style=flat)](http://cocoapods.org/pods/DialogBox)

Every APP has a significant requirement of alerts, notifications, screen messages, toast/HUD and loadings so this time I have tried to make all of these things so simple using single library only.

All you need is to show some creativity to provide any style using this robust library.

## Features
- [x] Can handle all your Alerts, Notification, Screen Messages or loadings with the single library.
- [x] Easy to understand and implement.
- [x] Wide range of options for customization as per your requirement.

## Example

```swift
DialogBox.show(title: "Success!!", message: "Your email has been sent.", boxApp: appearance, buttonTitle: “Go back!”, buttonAppearance: nil, actionBlock: {

// Action block

})
```

<img src="http://www.thinkotech.com/wp-content/uploads/2017/10/email-alert.png" width="300" height="534"/>

Below are the settings applied to above DialogBox
```swift
var appearance = BoxAppearance()
        
// Layout
appearance.layout.backgroundColor = UIColor.init(red: 99.0/255.0, green: 157.0/255.0, blue: 72.0/255.0, alpha: 1.0)
appearance.layout.cornerRadius = 10.0
appearance.layout.width = 300.0
        
// Title
appearance.title.textColor = UIColor.white
appearance.title.font = UIFont.boldSystemFont(ofSize: 20.0)
        
// Message
appearance.message.textColor = UIColor.white
appearance.message.font = UIFont.systemFont(ofSize: 17.0)
        
// Icon
appearance.icon.type = BoxIconType.image
appearance.icon.image.name = "email"
appearance.icon.margin = "0|30|0|20"
appearance.icon.position = BoxIconPosition.topCenter
appearance.icon.size = CGSize(width: 116, height: 117)
        
// Animation
appearance.animation = BoxAnimationType.bounce
        
// Button
appearance.button.height = 40.0
appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
appearance.button.bottomPosition.cornerRadius = 20
appearance.button.backgroundColor = UIColor.init(red: 99.0/255.0, green: 157.0/255.0, blue: 72.0/255.0, alpha: 1.0)
appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
appearance.button.textColor = UIColor.white
appearance.button.borderColor = UIColor.white
appearance.button.borderWidth = 2.0
appearance.button.containerMargin = "70|20|70|40"
```

## Blog
For complete information about this library you can refer blog http://www.thinkotech.com/ios/dialogbox/

## Installation
### CocoaPods
DialogBox is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DialogBox'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. A minimum version of `0.17` is required.

To install, simply add the following lines to your Cartfile:

```ruby
github "dhawaldawar/DialogBox" ~> 1.0.0
```

## Manually

If you prefer not to use either of the above mentioned dependency managers, you can integrate DialogBox into your project manually by adding the files contained in the [Classes](https://github.com/dhawaldawar/DialogBox/tree/master/DialogBox/Classes)
folder to your project.

## Author

Dhawal Dawar, dawar.dhawal@gmail.com

## License

DialogBox is available under the MIT license. See the LICENSE file for more info.

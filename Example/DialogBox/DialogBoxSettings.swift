//
//  DialogBoxSettings.swift
//  DialogBox
//
//  Created by Dhawal on 20/08/17.
//  Copyright © 2017 Dhawal. All rights reserved.
//

import UIKit
import DialogBox


struct BoxAppearanceAlert {

    static var _1 : BoxAppearance {
        var appearance = BoxAppearance()

        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0

        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)

        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)

        // Animation
        appearance.animation = BoxAnimationType.bounce

        // Button
        appearance.button.backgroundColor = UIColor.init(red: 98.0/255.0, green: 193.0/255.0, blue: 104.0/255.0, alpha: 1.0)

        return appearance
    }
    
    static var _2 : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 50, height: 50)
        appearance.icon.image.name = "success"
        appearance.icon.position = BoxIconPosition.centerBelowTitle
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.backgroundColor = UIColor.init(red: 103.0/255.0, green: 196.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        
        return appearance
    }
    
    static var _3 : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 70, height: 70)
        appearance.icon.image.name = "success"
        appearance.icon.margin = "0|-55|0|0"
        appearance.icon.position = BoxIconPosition.topCenter
        appearance.icon.backgroundColor = UIColor.white
        appearance.icon.padding = "5|5|5|5"
        appearance.icon.cornerRadius = 40
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.backgroundColor = UIColor.init(red: 103.0/255.0, green: 196.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        
        return appearance
    }
    
    
    
    static var _4 : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.padding = 0
        appearance.layout.spacing = 0
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.white
        appearance.title.backgroundColor = UIColor.init(red: 103.0/255.0, green: 196.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        appearance.title.padding = "0|100|0|10"
        
        // Message
        appearance.message.margin = "20|0|20|0"
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 70, height: 70)
        appearance.icon.image.name = "successWhite"
        appearance.icon.margin = "0|-120|0|70"
        appearance.icon.position = BoxIconPosition.centerBelowTitle
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.containerMargin = "20|20|20|20"
        appearance.button.textColor = UIColor.darkGray
        appearance.button.backgroundColor = UIColor.init(red: 210.0/255.0, green: 210.0/255.0, blue: 210.0/255.0, alpha: 1.0)
        appearance.button.bottomPosition.cornerRadius = 20.0
        
        return appearance
    }
    
    static var _5 : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.textAlignment = NSTextAlignment.left
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 50, height: 50)
        appearance.icon.image.name = "success"
        appearance.icon.position = BoxIconPosition.leftBesideMessage
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.backgroundColor = UIColor.init(red: 103.0/255.0, green: 196.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        
        return appearance
    }
    
    static var _6 : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        
        return appearance
    }
    
    static var btnConfirmationNo : BoxButtonAppearance{
        var appearance = BoxButtonAppearance()
        appearance.backgroundColor = UIColor.init(red: 210.0/255.0, green: 210.0/255.0, blue: 210.0/255.0, alpha: 1.0)
        appearance.textColor = UIColor.darkGray
        return appearance
    }
    
    static var btnConfirmationYes : BoxButtonAppearance{
        var appearance = BoxButtonAppearance()
        appearance.backgroundColor = UIColor.init(red: 237.0/255.0, green: 86.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        appearance.textColor = UIColor.white
        return appearance
    }
    
    static var _7 : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.bottomPosition.layout = BoxButtonBottomPositionLayout.withoutSpacing
        
        return appearance
    }
    
    static var _9 : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.padding = 0
        
        appearance.layout.cornerRadius = 0.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.padding = "0|10|0|10"
        appearance.title.textColor = UIColor.darkGray
        appearance.title.backgroundColor = UIColor.init(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        // Message
        appearance.message.margin = "20|0|20|0"
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.image.name = "update"
        appearance.icon.size = CGSize(width: 70, height: 70)
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.borderWidth = 1.0
        appearance.button.borderColor = UIColor.lightGray
        appearance.button.bottomPosition.layout = BoxButtonBottomPositionLayout.withoutSpacing
        appearance.button.bottomPosition.maximumNoOfButtonsInSingleRow = 1
        
        return appearance
    }
    
    static var btnTitleBgNo : BoxButtonAppearance{
        var appearance = BoxButtonAppearance()
        appearance.backgroundColor = UIColor.white
        appearance.textColor = UIColor.darkGray
        return appearance
    }
    
    static var btnTitleBgAppStore : BoxButtonAppearance{
        var appearance = BoxButtonAppearance()
        appearance.backgroundColor = UIColor.init(red: 32.0/255.0, green: 128.0/255.0, blue: 175.0/255.0, alpha: 1.0)
        appearance.textColor = UIColor.white
        return appearance
    }

    static var _10 : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        appearance.layout.backgroundColor = UIColor.init(red: 212.0/255.0, green: 72.0/255.0, blue: 59.0/255.0, alpha: 1.0)
        
        // Title
        appearance.title.padding = "0|30|0|10"
        appearance.title.textColor = UIColor.white
        appearance.title.font = UIFont.boldSystemFont(ofSize: 18.0)
        
        // Message
        appearance.message.margin = "20|0|20|0"
        appearance.message.textColor = UIColor.white
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.image.name = "error"
        appearance.icon.size = CGSize(width: 70, height: 70)
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.backgroundColor = UIColor.init(red: 163.0/255.0, green: 54.0/255.0, blue: 44.0/255.0, alpha: 1.0)
        appearance.button.bottomPosition.cornerRadius = 20.0
        appearance.button.containerMargin = "0|10|0|10"
        
        // Close 
        appearance.closeButton.show = true
        appearance.closeButton.font = UIFont.boldSystemFont(ofSize: 16.0)
        appearance.closeButton.title = "X"
        appearance.closeButton.textColor = UIColor.white
        appearance.closeButton.position = BoxCloseButtonPosition.cornerInside
        
        return appearance
    }
    
    static var _11 : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Close
        appearance.closeButton.show = true
        appearance.closeButton.imageName = "cancel"
        appearance.closeButton.position = BoxCloseButtonPosition.cornerOutside
        
        return appearance
    }
    
    static var _12 : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.padding = 0.0
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textAlignment = NSTextAlignment.left
        appearance.title.textColor = UIColor.darkGray
        appearance.title.margin = "20|20|20|0"
        
        // Message
        appearance.message.textAlignment = NSTextAlignment.left
        appearance.message.textColor = UIColor.darkGray
        appearance.message.margin = "20|0|20|0"
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.bottomPosition.cornerRadius = 0
        appearance.button.containerMargin = "120|0|0|10"
        appearance.button.bottomPosition.horizontalSpacing = 0.0
        appearance.button.backgroundColor = UIColor.white
        appearance.button.textColor = UIColor.init(red: 237.0/255.0, green: 86.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        
        return appearance
    }
    
    static var _13 : BoxAppearance {
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
        appearance.button.bottomPosition.cornerRadius = 20
        appearance.button.backgroundColor = UIColor.init(red: 99.0/255.0, green: 157.0/255.0, blue: 72.0/255.0, alpha: 1.0)
        appearance.button.textColor = UIColor.white
        appearance.button.borderColor = UIColor.white
        appearance.button.borderWidth = 2.0
        appearance.button.containerMargin = "70|20|70|40"
        
        return appearance
    }

    static var _14 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.autoDismiss = true
        appearance.position = BoxPosition.bottom
        
        // Layout
        appearance.layout.backgroundColor = UIColor.white
        appearance.layout.cornerRadius = 10.0
        appearance.layout.width = 170.0
        
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        appearance.containerBackground.tapToDismiss = true
        
        // Message
        appearance.message.textColor = UIColor.black
        appearance.message.font = UIFont.boldSystemFont(ofSize: 18.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.image.name = "save"
        appearance.icon.position = BoxIconPosition.topCenter
        appearance.icon.size = CGSize(width: 70, height: 70)
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        return appearance
    }

}

struct BoxAppearanceNotification {
    
    static var _1 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.top
        appearance.positionMargin = 20
        appearance.autoDismiss = true
        
        // Layout
        appearance.layout.spacing = 10
        appearance.layout.padding = 10
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        appearance.layout.backgroundColor = UIColor.init(red: 98.0/255.0, green: 193.0/255.0, blue: 104.0/255.0, alpha: 1.0)
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Title
        appearance.title.textColor = UIColor.white
        appearance.title.textAlignment = NSTextAlignment.left
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.title.margin = "10|0|10|0"
        
        // Message
        appearance.message.textColor = UIColor.white
        appearance.message.textAlignment = NSTextAlignment.left
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        appearance.message.margin = "10|0|10|0"
        
        // Animation
        appearance.animation = BoxAnimationType.slideFromTop
        
        return appearance
    }
    
    static var _2 : BoxAppearance {
        var appearance = BoxAppearance()

        appearance.position = BoxPosition.top
        appearance.positionMargin = 64
        appearance.autoDismiss = true
        
        // Layout
        appearance.layout.spacing = 10
        appearance.layout.padding = 20
        appearance.layout.cornerRadius = 0.0
        appearance.layout.width = Float(UIScreen.main.bounds.size.width)
        appearance.layout.backgroundColor = UIColor.init(red: 225.0/255.0, green: 78.0/255.0, blue: 73.0/255.0, alpha: 1.0)
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Title
        appearance.title.textColor = UIColor.white
        appearance.title.textAlignment = NSTextAlignment.left
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.position = BoxIconPosition.leftFullHeight
        appearance.icon.image.name = "warning"
        appearance.icon.padding = "20|0|20|0"
        
        // Animation
        appearance.animation = BoxAnimationType.slideFromTop
        
        return appearance
    }

    static var _3 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.top
        appearance.positionMargin = 64
        appearance.autoDismiss = true
        
        // Layout
        appearance.layout.spacing = 10
        appearance.layout.padding = 20
        
        appearance.layout.cornerRadius = 0.0
        appearance.layout.width = Float(UIScreen.main.bounds.size.width)
        appearance.layout.backgroundColor = UIColor.init(red: 225.0/255.0, green: 78.0/255.0, blue: 73.0/255.0, alpha: 1.0)
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Title
        appearance.title.textColor = UIColor.white
        appearance.title.textAlignment = NSTextAlignment.left
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.image.name = "warning"
        appearance.icon.padding = "20|0|20|0"
        appearance.icon.position = BoxIconPosition.leftFullHeight
        appearance.icon.separator.show = true
        appearance.icon.separator.borderWidth = 1.0
        appearance.icon.separator.color = UIColor.white
        appearance.icon.separator.margin = 10.0
        
        // Animation
        appearance.animation = BoxAnimationType.slideFromTop
        
        return appearance
    }
    
    static var _4 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.top
        appearance.positionMargin = 20
        appearance.autoDismiss = true
        
        // Layout
        appearance.layout.spacing = 10
        appearance.layout.padding = 20
        appearance.layout.cornerRadius = 10.0
        appearance.layout.width = 300.0
        appearance.layout.backgroundColor = UIColor.white
        appearance.layout.borderWidth = 2.0
        appearance.layout.borderColor = UIColor.init(red: 142.0/255.0, green: 176.0/255.0, blue: 37.0/255.0, alpha: 1.0)
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.textAlignment = NSTextAlignment.left
        appearance.title.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.position = BoxIconPosition.leftFullHeight
        appearance.icon.image.name = "successWhite"
        appearance.icon.padding = "20|0|20|0"
        appearance.icon.size = CGSize(width: 30, height: 30)
        appearance.icon.backgroundColor = UIColor.init(red: 142.0/255.0, green: 176.0/255.0, blue: 37.0/255.0, alpha: 1.0)
        
        // Animation
        appearance.animation = BoxAnimationType.slideFromTop
        
        return appearance
    }
    
    static var _5 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.top
        appearance.positionMargin = 20
        
        // Layout
        appearance.layout.spacing = 5
        appearance.layout.padding = 10
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 300.0
        appearance.layout.backgroundColor = UIColor.white
        
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.textAlignment = NSTextAlignment.left
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.textAlignment = NSTextAlignment.left
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.image.name = "success"
        appearance.icon.position = BoxIconPosition.leftFullHeight
        appearance.icon.padding = "10|0|10|0"
        
        // Animation
        appearance.animation = BoxAnimationType.slideFromTop
        
        // Button
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.textColor = UIColor.white
        appearance.button.backgroundColor = UIColor.init(red: 98.0/255.0, green: 193.0/255.0, blue: 104.0/255.0, alpha: 1.0)
        appearance.button.position = BoxButtonPosition.right

        return appearance
    }
    
    static var _6 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.top
        appearance.positionMargin = 20
        
        // Layout
        appearance.layout.spacing = 5
        appearance.layout.padding = 10
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 300.0
        appearance.layout.backgroundColor = UIColor.init(red: 225.0/255.0, green: 78.0/255.0, blue: 73.0/255.0, alpha: 1.0)
       
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Title
        appearance.title.textColor = UIColor.white
        appearance.title.textAlignment = NSTextAlignment.left
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.white
        appearance.message.textAlignment = NSTextAlignment.left
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.image.name = "warning"
        appearance.icon.size = CGSize(width: 30, height: 30)
        appearance.icon.position = BoxIconPosition.leftFullHeight
        appearance.icon.padding = "10|0|10|0"
        
        // Animation
        appearance.animation = BoxAnimationType.slideFromTop
        
        // Button
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.textColor = UIColor.white
        appearance.button.backgroundColor = UIColor.init(red: 178.0/255.0, green: 62.0/255.0, blue: 59.0/255.0, alpha: 1.0)
        appearance.button.borderColor = UIColor.white
        appearance.button.borderWidth = 1.0
        appearance.button.position = BoxButtonPosition.right
        
        return appearance
    }
    
    static var _8 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.top
        appearance.positionMargin = 30

        // Layout
        appearance.layout.spacing = 10
        appearance.layout.padding = 10
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        appearance.layout.backgroundColor = UIColor.white
       
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Title
        appearance.title.textColor = UIColor.init(red: 98.0/255.0, green: 193.0/255.0, blue: 104.0/255.0, alpha: 1.0)
        appearance.title.textAlignment = NSTextAlignment.left
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.title.margin = "10|0|10|0"
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.textAlignment = NSTextAlignment.left
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        appearance.message.margin = "10|0|10|0"
        
        // Animation
        appearance.animation = BoxAnimationType.slideFromTop
        
        // Close 
        appearance.closeButton.show = true
        appearance.closeButton.position = BoxCloseButtonPosition.cornerOutside
        appearance.closeButton.imageName = "cancel"
        
        return appearance
    }
    
    static var _7 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.top
        appearance.positionMargin = 20
        
        // Layout
        appearance.layout.spacing = 10
        appearance.layout.padding = 10
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        appearance.layout.backgroundColor = UIColor.init(red: 98.0/255.0, green: 193.0/255.0, blue: 104.0/255.0, alpha: 1.0)
        
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Title
        appearance.title.textColor = UIColor.white
        appearance.title.textAlignment = NSTextAlignment.left
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.title.margin = "10|0|10|0"
        
        // Message
        appearance.message.textColor = UIColor.white
        appearance.message.textAlignment = NSTextAlignment.left
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        appearance.message.margin = "10|0|10|0"
        
        // Animation
        appearance.animation = BoxAnimationType.slideFromTop
        
        // Close
        appearance.closeButton.show = true
        appearance.closeButton.position = BoxCloseButtonPosition.cornerInside
        appearance.closeButton.title = "x"
        appearance.closeButton.textColor = UIColor.white
        
        return appearance
    }
}

struct BoxAppearanceLoading {
    
    static var _1 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.center
        appearance.positionMargin = 20
        appearance.autoDismiss = true
        
        // Layout
        appearance.layout.padding = 10
        appearance.layout.enableShadow = false
        appearance.layout.width = 100.0
        appearance.layout.backgroundColor = UIColor.clear
       
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Icon
        appearance.icon.type = BoxIconType.loading
        
        // Animation
        appearance.animation = BoxAnimationType.fade
        
        return appearance
    }
    
    static var _2 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.center
        appearance.positionMargin = 20
        appearance.autoDismiss = true

        // Layout
        appearance.layout.padding = 10
        appearance.layout.enableShadow = false
        appearance.layout.width = 100.0
        appearance.layout.backgroundColor = UIColor.clear
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Icon
        appearance.icon.type = BoxIconType.loading
        appearance.icon.loading.imageName = "loadingBlue"
        
        // Animation
        appearance.animation = BoxAnimationType.fade
        
        return appearance
    }
    
    static var _3 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.center
        appearance.positionMargin = 20
        appearance.autoDismiss = true

        // Layout
        appearance.layout.padding = 20
        appearance.layout.enableShadow = false
        appearance.layout.width = 80.0
        appearance.layout.backgroundColor = UIColor.white
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Icon
        appearance.icon.type = BoxIconType.loading
        appearance.icon.loading.imageName = "loadingBlue"
        
        // Animation
        appearance.animation = BoxAnimationType.fade
        
        return appearance
    }
    
    static var _4 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.center
        appearance.positionMargin = 20
        appearance.autoDismiss = true

        // Layout
        appearance.layout.padding = 10
        appearance.layout.spacing = 10
        appearance.layout.enableShadow = false
        appearance.layout.width = 150.0
        appearance.layout.backgroundColor = UIColor.white
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Icon
        appearance.icon.type = BoxIconType.loading
        appearance.icon.position = BoxIconPosition.topCenter
        
        appearance.icon.loading.imageName = "loadingPurple"
        
        // Animation
        appearance.animation = BoxAnimationType.fade
        
        return appearance
    }
    
    static var _5 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.center
        appearance.positionMargin = 20
        appearance.autoDismiss = true

        // Layout
        appearance.layout.padding = 10
        appearance.layout.spacing = 10
        appearance.layout.enableShadow = false
        appearance.layout.width = 150.0
        appearance.layout.backgroundColor = UIColor.white
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Title
        appearance.title.font = UIFont.systemFont(ofSize: 16.0)
        appearance.title.textColor = UIColor.darkGray
        
        // Icon
        appearance.icon.type = BoxIconType.loading
        appearance.icon.position = BoxIconPosition.centerBelowTitle
        appearance.icon.loading.imageName = "loadingPurple"
        
        // Animation
        appearance.animation = BoxAnimationType.fade
        
        return appearance
    }
    
    static var _6 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.center
        appearance.positionMargin = 20
        appearance.autoDismiss = true

        // Layout
        appearance.layout.padding = 10
        appearance.layout.spacing = 0
        appearance.layout.enableShadow = false
        appearance.layout.width = 150.0
        appearance.layout.backgroundColor = UIColor.white
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Icon
        appearance.icon.type = BoxIconType.loading
        appearance.icon.position = BoxIconPosition.leftBesideMessage
        
        appearance.icon.loading.imageName = "loadingPurple"
        appearance.icon.size = CGSize(width: 20, height: 20)
        
        // Animation
        appearance.animation = BoxAnimationType.fade
        
        return appearance
    }
    
    static var _7 : BoxAppearance {
        var appearance = BoxAppearance()

        appearance.position = BoxPosition.center
        appearance.positionMargin = 20
        appearance.autoDismiss = true

        // Layout
        appearance.layout.padding = 10
        appearance.layout.spacing = 10
        appearance.layout.enableShadow = false
        appearance.layout.width = 250.0
        appearance.layout.backgroundColor = UIColor.white
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Icon
        appearance.icon.type = BoxIconType.loading
        appearance.icon.position = BoxIconPosition.centerBelowTitle
        
        appearance.icon.loading.imageName = "loadingPurple"
        
        // Animation
        appearance.animation = BoxAnimationType.fade
        
        return appearance
    }
    
    static var _8 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.center
        appearance.positionMargin = 20
        appearance.autoDismiss = true
        
        // Layout
        appearance.layout.enableShadow = false
        appearance.layout.width = 300.0
        appearance.layout.backgroundColor = UIColor.white
        
        // Title
        appearance.title.textAlignment = NSTextAlignment.left
        
        // Message
        appearance.message.textAlignment = NSTextAlignment.left
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.7)
        
        // Icon
        appearance.icon.type = BoxIconType.loading
        appearance.icon.position = BoxIconPosition.leftBesideMessage
        appearance.icon.loading.imageName = "loadingPurple"
        
        // Animation
        appearance.animation = BoxAnimationType.fade
        
        return appearance
    }
}


struct BoxAppearanceScreenMessages {
    
    static var _1 : BoxAppearance {
        var appearance = BoxAppearance()

        appearance.position = BoxPosition.center
        appearance.positionMargin = 20
        appearance.autoDismiss = true
        
        // Layout
        appearance.layout.padding = 10
        appearance.layout.enableShadow = false
        appearance.layout.width = Float(UIScreen.main.bounds.size.width-40)
        appearance.layout.backgroundColor = UIColor.clear
        
        // Background
        appearance.containerBackground.tapToDismiss = true
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.white
        
        // Message
        appearance.message.font = UIFont.boldSystemFont(ofSize: 16.0)
        appearance.message.textColor = UIColor.darkGray
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.image.name = "search"
        appearance.icon.size = CGSize(width: 100, height: 100)
        
        // Animation
        appearance.animation = BoxAnimationType.none
        
        return appearance
    }
    
    static var _2 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.center
        appearance.positionMargin = 20
        appearance.autoDismiss = true

        // Layout
        appearance.layout.padding = 10
        appearance.layout.enableShadow = false
        appearance.layout.width = Float(UIScreen.main.bounds.size.width-40)
        appearance.layout.backgroundColor = UIColor.clear
        
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.white
        
        // Message
        appearance.message.font = UIFont.boldSystemFont(ofSize: 16.0)
        appearance.message.textColor = UIColor.darkGray
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.image.name = "wifi"
        appearance.icon.size = CGSize(width: 100, height: 100)
        
        // Animation
        appearance.animation = BoxAnimationType.none
        
        // Button
        appearance.button.containerMargin = "80|0|80|0"
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.bottomPosition.cornerRadius = 20.0
        appearance.button.bottomPosition.maximumNoOfButtonsInSingleRow = 1
        appearance.button.backgroundColor = UIColor.init(red: 0.0, green: 165.0/255.0, blue: 218.0/255.0, alpha: 1.0)
        return appearance
    }
    
    static var _3 : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.center
        appearance.positionMargin = 20
        appearance.autoDismiss = true

        // Layout
        appearance.layout.padding = 10
        appearance.layout.enableShadow = false
        appearance.layout.width = Float(UIScreen.main.bounds.size.width-40)
        appearance.layout.backgroundColor = UIColor.clear
        
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.white
        
        // Title
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        appearance.message.textColor = UIColor.darkGray
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.image.name = "podcast"
        appearance.icon.size = CGSize(width: 100, height: 100)
        
        // Animation
        appearance.animation = BoxAnimationType.none
        
        // Button
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.bottomPosition.cornerRadius = 20.0
        appearance.button.bottomPosition.maximumNoOfButtonsInSingleRow = 1
        appearance.button.textColor = UIColor.init(red: 127.0/255.0, green: 34.0/255.0, blue: 185.0/255.0, alpha: 1.0)
        appearance.button.backgroundColor = UIColor.clear
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 16.0)
        
        return appearance
    }
    
    static var _4 : BoxAppearance{
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = Float(UIScreen.main.bounds.size.width - CGFloat(40.0))
        appearance.layout.backgroundColor = UIColor.clear
        appearance.layout.enableShadow = false
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.title.textColor = UIColor.init(red: 23.0/255.0, green: 76.0/255.0, blue: 43.0/255.0, alpha: 1.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        appearance.message.textColor = UIColor.init(red: 23.0/255.0, green: 76.0/255.0, blue: 43.0/255.0, alpha: 1.0)
        appearance.message.margin = "0|0|0|20"
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 100, height: 100)
        appearance.icon.image.name = "successWhite"
        appearance.icon.position = BoxIconPosition.topCenter
        appearance.icon.margin = "0|0|0|80"
        
        // Animation
        appearance.animation = BoxAnimationType.none
        
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 100.0/255.0, green: 208.0/255.0, blue: 44.0/255.0, alpha: 1.0)
        
        // Button
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.textColor = UIColor.darkGray
        appearance.button.backgroundColor = UIColor.white
        appearance.button.bottomPosition.cornerRadius = 3.0
        appearance.button.containerMargin = "50|0|50|0"
        
        return appearance
    }

    static var _5 : BoxAppearance{
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.top
        appearance.positionMargin = 0

        // Layout
        appearance.layout.padding = 0
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = Float(UIScreen.main.bounds.size.width)
        appearance.layout.backgroundColor = UIColor.clear
        appearance.layout.enableShadow = false
        
        // Title
        appearance.title.textColor = UIColor.init(red: 10.0/255.0, green: 9.0/255.0, blue: 79.0/255.0, alpha: 1.0)
        appearance.title.textAlignment = NSTextAlignment.left
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.title.margin = "20|30|0|0"
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.textAlignment = NSTextAlignment.left
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        appearance.message.margin = "20|0|0|20"
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 100, height: 100)
        appearance.icon.image.name = "successWhite"
        appearance.icon.position = BoxIconPosition.topCenter
        appearance.icon.backgroundColor = UIColor.init(red: 100.0/255.0, green: 208.0/255.0, blue: 44.0/255.0, alpha: 1.0)
        appearance.icon.padding = "\((Float(UIScreen.main.bounds.size.width) - 100)/2)|100|\((Float(UIScreen.main.bounds.size.width) - 100)/2)|100"
        
        // Animation
        appearance.animation = BoxAnimationType.none
        
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.white
        
        // Button
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.textColor = UIColor.white
        appearance.button.backgroundColor = UIColor.init(red: 177.0/255.0, green: 209.0/255.0, blue: 6.0/255.0, alpha: 1.0)
        appearance.button.bottomPosition.cornerRadius = 3.0
        appearance.button.containerMargin = "70|40|70|0"
        
        return appearance
    }

    
}

struct BoxAppearanceAnimation {
    
    static var fade : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 50, height: 50)
        appearance.icon.image.name = "success"
        appearance.icon.position = BoxIconPosition.centerBelowTitle
        
        // Animation
        appearance.animation = BoxAnimationType.fade
        
        // Button
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.textColor = UIColor.white
        appearance.button.backgroundColor = UIColor.init(red: 103.0/255.0, green: 196.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        appearance.button.bottomPosition.cornerRadius = 3.0
        
        return appearance
    }
    
    static var bounce : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 70, height: 70)
        appearance.icon.image.name = "success"
        appearance.icon.margin = "0|-55|0|0"
        appearance.icon.position = BoxIconPosition.topCenter
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.textColor = UIColor.white
        appearance.button.backgroundColor = UIColor.init(red: 103.0/255.0, green: 196.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        appearance.button.bottomPosition.cornerRadius = 3.0
        
        return appearance
    }
    
    static var slideFromTop : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Animation
        appearance.animation = BoxAnimationType.slideFromTop
        
        // Button
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.textColor = UIColor.white
        appearance.button.backgroundColor = UIColor.init(red: 98.0/255.0, green: 193.0/255.0, blue: 104.0/255.0, alpha: 1.0)
        appearance.button.bottomPosition.cornerRadius = 3.0
        
        return appearance
    }
    
    static var slideFromBottom : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Animation
        appearance.animation = BoxAnimationType.slideFromBottom
        
        // Button
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.bottomPosition.cornerRadius = 3.0
        
        return appearance
    }

    static var none : BoxAppearance {
        var appearance = BoxAppearance()
        
        appearance.position = BoxPosition.center
        appearance.positionMargin = 20

        // Layout
        appearance.layout.spacing = 10
        appearance.layout.padding = 10
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        appearance.layout.backgroundColor = UIColor.init(red: 98.0/255.0, green: 193.0/255.0, blue: 104.0/255.0, alpha: 1.0)
        
        // Title
        appearance.title.textColor = UIColor.white
        appearance.title.textAlignment = NSTextAlignment.left
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.title.margin = "10|0|10|0"
        
        // Message
        appearance.message.textColor = UIColor.white
        appearance.message.textAlignment = NSTextAlignment.left
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        appearance.message.margin = "10|0|10|0"
        
        // Animation
        appearance.animation = BoxAnimationType.none
        
        // Close
        appearance.closeButton.show = true
        appearance.closeButton.position = BoxCloseButtonPosition.cornerInside
        appearance.closeButton.title = "x"
        appearance.closeButton.textColor = UIColor.white
        
        return appearance
    }
}

struct BoxAppearanceBackground {
    
    static var darkBlur : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 50, height: 50)
        appearance.icon.image.name = "success"
        appearance.icon.position = BoxIconPosition.centerBelowTitle
        
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.darkBlur
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.textColor = UIColor.white
        appearance.button.backgroundColor = UIColor.init(red: 103.0/255.0, green: 196.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        appearance.button.bottomPosition.cornerRadius = 3.0
        
        return appearance
    }
    
    static var lightBlur : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 50, height: 50)
        appearance.icon.image.name = "success"
        appearance.icon.position = BoxIconPosition.centerBelowTitle
        
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.lightBlur
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.textColor = UIColor.white
        appearance.button.backgroundColor = UIColor.init(red: 103.0/255.0, green: 196.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        appearance.button.bottomPosition.cornerRadius = 3.0
        
        return appearance
    }
    
    static var extraLightBlur : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 50, height: 50)
        appearance.icon.image.name = "success"
        appearance.icon.position = BoxIconPosition.centerBelowTitle
        
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.extraLightBlur
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.textColor = UIColor.white
        appearance.button.backgroundColor = UIColor.init(red: 103.0/255.0, green: 196.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        appearance.button.bottomPosition.cornerRadius = 3.0
        
        return appearance
    }
    
    static var none : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 50, height: 50)
        appearance.icon.image.name = "success"
        appearance.icon.position = BoxIconPosition.centerBelowTitle
        
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.none
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.textColor = UIColor.white
        appearance.button.backgroundColor = UIColor.init(red: 103.0/255.0, green: 196.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        appearance.button.bottomPosition.cornerRadius = 3.0
        
        return appearance
    }
    
    static var custom : BoxAppearance {
        var appearance = BoxAppearance()
        
        // Layout
        appearance.layout.cornerRadius = 5.0
        appearance.layout.width = 270.0
        
        // Title
        appearance.title.textColor = UIColor.darkGray
        appearance.title.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        // Message
        appearance.message.textColor = UIColor.darkGray
        appearance.message.font = UIFont.systemFont(ofSize: 16.0)
        
        // Icon
        appearance.icon.type = BoxIconType.image
        appearance.icon.size = CGSize(width: 50, height: 50)
        appearance.icon.image.name = "success"
        appearance.icon.position = BoxIconPosition.centerBelowTitle
        
        // Background
        appearance.containerBackground.style = BoxBackgroundStyle.customColor
        appearance.containerBackground.color = UIColor.init(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.4)
        
        // Animation
        appearance.animation = BoxAnimationType.bounce
        
        // Button
        appearance.button.position = BoxButtonPosition.bottom
        appearance.button.titleFont = UIFont.boldSystemFont(ofSize: 17.0)
        appearance.button.textColor = UIColor.white
        appearance.button.backgroundColor = UIColor.init(red: 103.0/255.0, green: 196.0/255.0, blue: 77.0/255.0, alpha: 1.0)
        appearance.button.bottomPosition.cornerRadius = 3.0
        
        return appearance
    }
}

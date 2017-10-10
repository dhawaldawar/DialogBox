//
//  DialogBox.swift
//  DialogBox
//
//  Created by Dhawal on 24/06/17.
//  Copyright © 2017 Dhawal. All rights reserved.
//

import UIKit

// Debug
let DebugBorderEnable = false
let DebugBorderColor = UIColor.blue

//MARK:-
public struct BoxAppearance{
//MARK:-
    /// To set whether DialogBox should be auto dismissed after given wait time (autoDismissWaitTime).
    public var autoDismiss : Bool! = false
    
    /// If (autoDismiss) is true DialogBox would be dismissed after given wait time.
    public var autoDismissWaitTime : Float! = 3
    
    /// Animation for showing DialogBox
    public var animation : BoxAnimationType! = BoxAnimationType.fade
    
    /// Position where DialogBox should be shown.
    public var position : BoxPosition! = BoxPosition.center
    
    /// To shift the position of DialogBox respective to its superview and assigned position. This will be applied only for two positions top and bottom.
    public var positionMargin : Float! = 20
    
    // MARK:- ---- Layout Settings ---- -
    public var layout = BoxLayout()
    public struct BoxLayout {
        /// Fixed width of Dialogbox.
        public var width : Float! = 250
        
        /// Padding (inner spacing) of DialogBox.
        public var padding : Float! = 20
        
        /// Spacing among view elements in the DialogBox like title, message, icon etc.
        public var spacing : Float! = 20
        
        public var borderWidth : Float! = 0
        
        public var borderColor : UIColor! = UIColor.clear
        
        public var enableShadow : Bool! = true
        
        public var shadowColor : UIColor! = UIColor.black
        
        public var cornerRadius : Float! = 5.0
        
        public var backgroundColor : UIColor! = UIColor.white
    }

    // MARK:- ---- Container background Settings ---- -
    /// Container background view settings in which DialogBox will be shown.
    public var containerBackground = ContainerBackground()
    public struct ContainerBackground {
        public var  style : BoxBackgroundStyle! = BoxBackgroundStyle.darkBlur
        
        /// Color will be applied only if container background style is set as BoxBackgroundStyle.customColor
        public var  color : UIColor! = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.5)
        
        /// To set whether Dialogbox should be dismissed on tap, either on background or on the DialogBox itself
        public var  tapToDismiss : Bool! = false
    }

    // MARK:- ---- Title Settings ---- -
    /// Title settigs
    public var title = Title()
    public struct Title{

        public var textAlignment : NSTextAlignment! = NSTextAlignment.center
        
        public var textColor : UIColor! = UIColor.black
        
        /// Margin to near view elements, value should be in format "(LEFT MARGIN)|(TOP MARGIN)|(RIGHT MARGIN)|(BOTTOM MARGIN)". Eg: 10|20|20|10
        public var margin : String?
        
        /// Padding of the title block i.e. inner spacing, value should be in format "(LEFT MARGIN)|(TOP MARGIN)|(RIGHT MARGIN)|(BOTTOM MARGIN)". Eg: 10|20|20|10
        public var padding : String?
        
        public var backgroundColor : UIColor! = UIColor.clear
        
        public var font : UIFont! = UIFont.boldSystemFont(ofSize: 17)
    }
    
    // MARK:- ---- Message Settings ---- -
    /// Message settings
    public var message = Message()
    public struct Message {
        
        public var textAlignment : NSTextAlignment! = NSTextAlignment.center
        
        public var textColor : UIColor! = UIColor.darkGray
        
        /// Margin to near view elements, value should be in format "(LEFT MARGIN)|(TOP MARGIN)|(RIGHT MARGIN)|(BOTTOM MARGIN)". Eg: 10|20|20|10
        public var margin : String?
        
        public var font : UIFont! = UIFont.systemFont(ofSize: 16.0)
    }
    
    // MARK:- ---- Icon Settings ---- -
    /// Icon settings
    public var icon = Icon()
    public struct Icon{
        /// Type of icon that would be shown on DialogBox
        public var type : BoxIconType?
        
        public var backgroundColor : UIColor! = UIColor.clear
        
        public var cornerRadius : Float = 0.0
        
        public var size : CGSize! = CGSize(width: 40, height: 40)
        
        public var position : BoxIconPosition! = BoxIconPosition.centerBelowTitle
        
        /// Padding of the Icon block i.e. inner spacing, value should be in format "(LEFT MARGIN)|(TOP MARGIN)|(RIGHT MARGIN)|(BOTTOM MARGIN)". Eg: 10|20|20|10
        public var padding : String?
        
        /// Margin to near view elements, value should be in format "(LEFT MARGIN)|(TOP MARGIN)|(RIGHT MARGIN)|(BOTTOM MARGIN)". Eg: 10|20|20|10
        public var margin : String?
        
        // MARK:- ---- Separator Settings ---- -
        public var separator = Separator()
        public struct Separator {
            public var show : Bool! = false
            
            public var borderWidth : Float! = 1
            
            /// Margin from both the edges of separator
            public var margin : Float! = 0
            
            public var color : UIColor! = UIColor.lightGray
        }
        
        // MARK:- Image -
        /// These settings would be applied only if DialogBox icon type is set as BoxIconType.image
        public var image = Image()
        public struct Image {
            public var name : String!
            
            public var contentMode : UIViewContentMode! = UIViewContentMode.scaleToFill
        }
        
        // MARK:- Font Awesome -
        /// These setting would be applied only if DialogBox icon type is set as BoxIconType.fontAwesome
        public var fontAwesome = FontAwesome()
        public struct FontAwesome {
            public var font : UIFont!
            
            public var fontCode : String!
            
            public var fontCodeColor : UIColor! = UIColor.black
        }
        
        // MARK:- Loading -
        /// These settings would be applied only if DialogBox icon type is set as BoxIconType.loading
        public var loading = Loading()
        public struct Loading {
            public var color : UIColor! = UIColor.gray
            
            public var imageName : String?
        }
    }

    // MARK:- ---- Button Settings ---- -
    /// Button general settings
    public var button = Button()
    public struct Button {
        public var borderWidth : Float! = 0
        
        public var borderColor : UIColor! = UIColor.darkGray
        
        public var height : Float! = 40
        
        public var backgroundColor : UIColor! = UIColor.init(red: 0.0, green: 165.0/255.0, blue: 218.0/255.0, alpha: 1.0)
        
        public var textColor : UIColor! = UIColor.white
        
        public var titleFont : UIFont! = UIFont.boldSystemFont(ofSize:17.0)
        
        public var position : BoxButtonPosition! = BoxButtonPosition.bottom
        
        /// Button container margin
        public var containerMargin : String?
        
        // MARK:- Bottom Position Settings -
        /// These settings would be applied only if position is set as BoxButtonPosition.bottom
        public var bottomPosition = BottomPosition()
        public struct BottomPosition {
            /// The way buttons would be shown in the DialogBox
            public var layout : BoxButtonBottomPositionLayout! = BoxButtonBottomPositionLayout.withSpacing
            
            public var maximumNoOfButtonsInSingleRow : Int! = 2
            
            public var cornerRadius : Float! = 5.0
            
            /// This would be applied only if button bottom position layout is set as BoxButtonBottomPositionLayout.withSpacing
            public var horizontalSpacing : Float! = 20
            
            /// This would be applied only if button bottom position layout is set as BoxButtonBottomPositionLayout.withSpacing
            public var verticalSpacing : Float! = 20
        }
        
        // MARK:- Right Position Settings -
        /// These settings would be applied only if position is set as BoxButtonPosition.right
        public var rightPositionLayout = RightPositionLayout()
        public struct RightPositionLayout {
            public var width : Float! = 60
        }
    }

    
    // MARK:- ---- Close Button Settings ---- -
    public var closeButton = CloseButton()
    public struct CloseButton{
        public var show : Bool! = false
        
        public var position : BoxCloseButtonPosition! = BoxCloseButtonPosition.cornerOutside
        
        public var title : String!
        
        public var size : CGSize! = CGSize(width: 30, height: 30)
        
        public var imageName : String?
        
        /// Margin from DialogBox view, value should be in format "(TOP MARGIN)|(RIGHT MARGIN). Eg: 10|10. This will be applied only if close button position is set as BoxCloseButtonPosition.cornerInside
        public var margin : String?
        
        public var font : UIFont! = UIFont.boldSystemFont(ofSize: 20.0)
        
        public var textColor : UIColor! = UIColor.black
        
        public var backgroundColor : UIColor? = UIColor.clear
    }
    public init() {}
}

// MARK:-
/// These settings would override general button settings to individual button.
public struct BoxButtonAppearance{
    // MARK:-
    public var borderWidth : Float?
    
    public var borderColor : UIColor?
    
    public var backgroundColor : UIColor?
    
    public var textColor : UIColor?
    
    public var titleFont : UIFont?
    
    public init() {}
}

// MARK:- Enums -

/**
 Options to specify position of DialogBox
 */
public enum BoxPosition{
    case center
    case top
    case bottom
}

/**
  Options to specify how DialogBox will be shown.
 */
public enum BoxAnimationType{
    case none
    case fade
    case slideFromTop
    case slideFromBottom
    case bounce
}

/**
 Options to secify background style
 */
public enum BoxBackgroundStyle{
    case none
    case lightBlur
    case extraLightBlur
    case darkBlur
    case customColor
}

/**
 Options to specify icon type.
 */
public enum BoxIconType{
    case loading
    case image
    case fontAwesome
}

/**
 Options to specify icon position
 */
public enum BoxIconPosition{
    case topCenter
    case topLeft
    case leftFullHeight
    case centerBelowTitle
    case centerBelowMessage
    case leftBesideMessage
}

/**
 Options to specify button position
 */
public enum BoxButtonPosition{
    case bottom
    case right
}

/**
 Options to specify bottom button position layout
 */
public enum BoxButtonBottomPositionLayout{
    case withSpacing
    case withoutSpacing
}

/**
 Options to specify position of close button.
 */

public enum BoxCloseButtonPosition{
    case cornerOutside
    case cornerInside
}

// MARK:-
public class DialogBox : UIView{
    
    // MARK:- ---- Public methods ---- -
    public static func show(title: String?, message: String?, boxApp : BoxAppearance?){
        let box = DialogBox()
        let window = UIApplication.shared.windows.last
        box.show(title: title, message: message, superView: window!,appearance: boxApp, closeBtnBlock: nil)
    }
    
    public static func show(title: String?, message: String?, boxApp : BoxAppearance?, superView: UIView!){
        let box = DialogBox()
        box.show(title: title, message: message, superView: superView,appearance: boxApp, closeBtnBlock: nil)
    }
    
    public static func show(title: String?, message: String?, boxApp : BoxAppearance?, buttonTitle:String, buttonAppearance: BoxButtonAppearance?, actionBlock: (() -> ())?){
        let box = DialogBox()
        box.addButton(title: buttonTitle, buttonAppearance: buttonAppearance, actionBlock: actionBlock)
        
        let window = UIApplication.shared.windows.last
        box.show(title: title, message: message, superView: window!,appearance: boxApp, closeBtnBlock: nil)
    }
    
    public static func show(title: String?, message: String?, superView: UIView!, boxApp : BoxAppearance?, buttonTitle:String, buttonAppearance: BoxButtonAppearance?, actionBlock: (() -> ())?){
        let box = DialogBox()
        box.addButton(title: buttonTitle, buttonAppearance: buttonAppearance, actionBlock: actionBlock)

        box.show(title: title, message: message, superView: superView,appearance: boxApp, closeBtnBlock: nil)
    }
    
    public static func show(title: String?, message: String?, boxApp : BoxAppearance?, closeBlock: (() -> ())?){
        let box = DialogBox()
        let window = UIApplication.shared.windows.last
        box.show(title: title, message: message, superView: window!,appearance: boxApp, closeBtnBlock: closeBlock)
    }
    
    public static func show(title: String?, message: String?, boxApp : BoxAppearance?, superView: UIView!, closeBlock: (() -> ())?){
        let box = DialogBox()
        box.show(title: title, message: message, superView: superView!,appearance: boxApp, closeBtnBlock: closeBlock)
    }
    
    public static func show(title: String?, message: String?, boxApp : BoxAppearance?, buttonTitle:String, buttonAppearance: BoxButtonAppearance?, buttonBlock: (() -> ())?, closeBlock: (() -> ())?){
        let box = DialogBox()
        box.addButton(title: buttonTitle, buttonAppearance: buttonAppearance, actionBlock: buttonBlock)
        
        let window = UIApplication.shared.windows.last
        box.show(title: title, message: message, superView: window!,appearance: boxApp, closeBtnBlock: closeBlock)
    }
    
    public func show(title: String?, message: String?, boxApp : BoxAppearance?){
        let window = UIApplication.shared.windows.last
        self.show(title: title, message: message, superView: window!,appearance: boxApp, closeBtnBlock: nil)
    }
    
    public func show(title: String?, message: String?, superView: UIView!, boxApp : BoxAppearance?){
        self.show(title: title, message: message, superView: superView,appearance: boxApp, closeBtnBlock: nil)
    }
    
    public func show(title: String?, message: String?, boxApp : BoxAppearance?, closeBlock: (() -> ())?){
        let window = UIApplication.shared.windows.last
        self.show(title: title, message: message, superView: window!,appearance: boxApp, closeBtnBlock: closeBlock)
    }
    
    public func show(title: String?, message: String?, superView: UIView!,boxApp : BoxAppearance?, closeBlock: (() -> ())?){
        self.show(title: title, message: message, superView: superView,appearance: boxApp, closeBtnBlock: closeBlock)
    }
    
    public func addButton(title: String!, buttonAppearance: BoxButtonAppearance?, actionBlock: (() -> ())?){
        let button = DialogBoxButton()
        button.appearance = buttonAppearance
        button.title = title
        button.actionBlock = actionBlock
        
        button.tag=(arrButtons.count)
        button.translatesAutoresizingMaskIntoConstraints=false
        button.setTitle(title, for:UIControlState.normal)
        button.clipsToBounds=true
        button.addTarget(self, action: #selector(buttonTapped(button:)), for: UIControlEvents.touchUpInside)

        arrButtons.append(button)
    }
    
    func dismiss(){
        if(isDismissCalled){
            return
        }
        
        if(boxAppearance.icon.type != nil && boxAppearance.icon.type == BoxIconType.loading && boxAppearance.icon.loading.imageName != nil){
            viewIcon.layer.removeAllAnimations()
        }
        
        isDismissCalled = true
        if(boxAppearance.animation == BoxAnimationType.fade || boxAppearance.animation == BoxAnimationType.bounce){
            if((btnClose) != nil){
                btnClose?.alpha=0.0
            }
            
            UIView.animate(withDuration: 0.3, animations: {
                self.viewDialogSuperView.transform=self.viewDialogSuperView.transform.scaledBy(x: 0.95, y: 0.95)
                self.viewDialogSuperView.alpha=0.0
                if(self.viewBg != nil){
                    self.viewBg.alpha=0.0
                }
            }, completion: { (finished) in
                if(finished){
                    self.removeFromSuperview()
                }
            })
        }else if(boxAppearance.animation == BoxAnimationType.slideFromTop){
            let frame = self.superview?.frame
            
            UIView.animate(withDuration: 0.3, delay: 0.0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
                if(self.boxAppearance.position == BoxPosition.top){
                    self.layoutBoxY.constant = CGFloat(-self.popUpHeight)
                }else if(self.boxAppearance.position == BoxPosition.center){
                    self.layoutBoxY.constant = -(((frame?.height)!/2)+self.layoutBoxHeight.constant/2)
                    
                }else{
                    self.layoutBoxY.constant = -((frame?.height)!)
                }
                if(self.viewBg != nil){
                    self.viewBg.alpha=0.0
                }
                if((self.btnClose) != nil){
                    self.btnClose?.alpha=0.0
                }
                self.layoutIfNeeded()
            }, completion: { (finished) in
                if(finished){
                    self.removeFromSuperview()
                }
            })
        }else if(boxAppearance.animation == BoxAnimationType.slideFromBottom){
            let frame=self.superview?.frame
            
            UIView.animate(withDuration: 0.3, delay: 0.0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
                if(self.boxAppearance.position == BoxPosition.top){
                    self.layoutBoxY.constant=(frame?.height)!
                }else if(self.boxAppearance.position == BoxPosition.center){
                    self.layoutBoxY.constant=(((frame?.height)!/2)+self.layoutBoxHeight.constant/2)
                }else{
                    self.layoutBoxY.constant=CGFloat(self.popUpHeight)
                }
                if(self.viewBg != nil){
                    self.viewBg.alpha=0.0
                }
                
                if((self.btnClose) != nil){
                    self.btnClose?.alpha=0.0
                }
                self.layoutIfNeeded()
            }, completion: { (finished) in
                if(finished){
                    self.removeFromSuperview()
                }
            })
        }else{
            removeFromSuperview()
        }
    }
    
    //MARK:- ---- Private Implementation ---- -
    //****************** Private Implementation ************************
    
    private var viewDialog : UIView!
    private var viewDialogSuperView : UIView!
    private var btnContainer : UIView!
    private var viewIcon : UIView!
    private var viewBg : UIView!
    
    private var layoutBoxWidth : NSLayoutConstraint!
    private var layoutBoxHeight : NSLayoutConstraint!
    private var layoutBoxY : NSLayoutConstraint!
    private var layoutBoxX : NSLayoutConstraint!
    
    private var popUpHeight : Float!
    
    private var btnClose : DialogBoxButton?
    private var boxAppearance : BoxAppearance!
    
    private var popUpDisplayed : Bool! = false
    private var isDismissCalled : Bool = false
    
    private var title : String?
    private var message : String?
    
    private var arrButtons = Array<DialogBoxButton>()
    
    private var closeBlock : (() -> ())?
    
    //MARK:- ---- Private Methods ---- -
    
    private func show(title:String?, message: String?, superView: UIView!,appearance: BoxAppearance?, closeBtnBlock:(() -> ())?){
        if(appearance == nil){
            boxAppearance = BoxAppearance()
        }else{
            boxAppearance = appearance
        }
        
        if(title != nil){
            self.title = title
        }
    
        if(message != nil){
            self.message = message
        }
    
        if(closeBtnBlock != nil){
            self.closeBlock=closeBtnBlock
        }
        setupBackground(superView:superView)
        setup()
    }
    
    private func updateContent(title:String?, message: String?,appearance: BoxAppearance? , closeBtnBlock:(() -> ())?){
        viewDialog.alpha = 0.0
    
        if(btnClose != nil) {
            btnClose!.removeFromSuperview()
            btnClose=nil
        }
        
        if(closeBtnBlock != nil){
            self.closeBlock=closeBtnBlock
        }
    
        for view in viewDialog.subviews{
            view.removeFromSuperview()
        }
    
        for view in btnContainer.subviews{
            view.removeFromSuperview()
        }
    
        arrButtons.removeAll()
        setup()
    }
    
    private func validateParameters(){
        // Validate title parameters
        if(boxAppearance.title.margin != nil){
            let arr = boxAppearance.title.margin?.components(separatedBy: "|")
            assert(arr?.count == 4, "BoxAppearance.title.margin : Value should be in format \"Int|Int|Int|Int\"")
            
            for i in 0..<arr!.count{
                assert(Int((arr?[i])!) != nil, "BoxAppearance.title.margin : Value should be in format \"Int|Int|Int|Int\"")
            }
        }
        
        if(boxAppearance.title.padding != nil){
            let arr = boxAppearance.title.padding?.components(separatedBy: "|")
            assert(arr?.count == 4, "BoxAppearance.title.padding : Value should be in format \"Int|Int|Int|Int\"")
            
            for i in 0..<arr!.count{
                assert(Int((arr?[i])!) != nil, "BoxAppearance.title.padding : Value should be in format \"Int|Int|Int|Int\"")
            }
        }
        
        // Validate messasge parameters
        if(boxAppearance.message.margin != nil){
            let arr = boxAppearance.message.margin?.components(separatedBy: "|")
            assert(arr?.count == 4, "BoxAppearance.message.margin : Value should be in format \"Int|Int|Int|Int\"")
            
            for i in 0..<arr!.count{
                assert(Int((arr?[i])!) != nil, "BoxAppearance.message.margin : Value should be in format \"Int|Int|Int|Int\"")
            }
        }
        
        if(boxAppearance.icon.type != nil){
            // Image
            if(boxAppearance.icon.type == BoxIconType.image){
                assert(boxAppearance.icon.image.name != nil, "BoxAppearance.icon.image.name : This is mandatory field as icon type is setup as Image")
            }
            
            if(boxAppearance.icon.margin != nil){
                let arr = boxAppearance.icon.margin?.components(separatedBy: "|")
                assert(arr?.count == 4, "BoxAppearance.icon.margin : Value should be in format \"Int|Int|Int|Int\"")
                
                for i in 0..<arr!.count{
                    assert(Int((arr?[i])!) != nil, "BoxAppearance.icon.margin : Value should be in format \"Int|Int|Int|Int\"")
                }
            }
            
            
            // Font Awesome
            if(boxAppearance.icon.type == BoxIconType.fontAwesome){
                assert(boxAppearance.icon.fontAwesome.font != nil, "boxAppearance.icon.fontAwesome.font : This is mandatory field as icon type is setup as FontAwesome")
                
                assert(boxAppearance.icon.fontAwesome.fontCode != nil, "boxAppearance.icon.fontAwesome.fontCode : This is mandatory field as icon type is setup as FontAwesome")
            }
        }
        
        if(boxAppearance.button.containerMargin != nil){
            let arr = boxAppearance.button.containerMargin?.components(separatedBy: "|")
            assert(arr?.count == 4, "boxAppearance.button.containerMargin : Value should be in format \"Int|Int|Int|Int\"")
            
            for i in 0..<arr!.count{
                assert(Int((arr?[i])!) != nil, "boxAppearance.button.containerMargin : Value should be in format \"Int|Int|Int|Int\"")
            }
        }
        
        if(boxAppearance.closeButton.show){
            if(boxAppearance.closeButton.margin != nil){
                let arr = boxAppearance.closeButton.margin?.components(separatedBy: "|")
                assert(arr?.count == 2, "boxAppearance.closeButton.margin : Value should be in format \"Int|Int\"")
                
                for i in 0..<arr!.count{
                    assert(Int((arr?[i])!) != nil, "boxAppearance.closeButton.margin : Value should be in format \"Int|Int\"")
                }
            }
        }
        
    }
    
    private func setup(){
        validateParameters()
        
        // Setup dialog refrence
        if(viewDialog == nil){
            viewDialog = UIView.init()
            viewDialogSuperView = UIView.init()
        }
        
        // Setup content layout
        let height=setupContentLayout()
        
        setupDialogView(height: height)
        
        if(boxAppearance.autoDismiss){
            self.perform(#selector(dismiss), with: self, afterDelay: Double(boxAppearance.autoDismissWaitTime))
        }
    }
    
    private func showDialog(){
        if(boxAppearance.animation == BoxAnimationType.fade){
            viewDialogSuperView.alpha=0.0
            viewDialogSuperView.transform = viewDialogSuperView.transform.scaledBy(x: 1.05, y: 1.05)
            if((btnClose) != nil){
                btnClose?.alpha=0.0
            }
            layoutIfNeeded()
            UIView.animate(withDuration: 0.3, animations: {
                self.viewDialogSuperView.transform=CGAffineTransform.identity
                self.viewDialogSuperView.alpha=1.0
                if((self.btnClose) != nil){
                    self.btnClose?.alpha=1.0
                }
                self.layoutIfNeeded()
            })
            
        }else if(boxAppearance.animation == BoxAnimationType.slideFromTop){
            let location = layoutBoxY.constant
            
            let frame = self.superview?.frame
            
            if(boxAppearance.position == BoxPosition.center){
                layoutBoxY.constant = -(((frame?.height)!/2)+layoutBoxHeight.constant/2)
            }else if(boxAppearance.position == BoxPosition.top){
                layoutBoxY.constant = CGFloat(-popUpHeight)
            }else{
                layoutBoxY.constant = -((frame?.height)!)
            }
            
            layoutIfNeeded()
            UIView.animate(withDuration: 0.15, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                self.layoutBoxY.constant=location
                self.layoutIfNeeded()
            }, completion:nil)
        }else if(boxAppearance.animation == BoxAnimationType.slideFromBottom){
            let location=layoutBoxY.constant
            
            let frame=self.superview?.frame
            
            if(boxAppearance.position == BoxPosition.center){
                layoutBoxY.constant=(((frame?.height)!/2)+layoutBoxHeight.constant/2)
            }else if(boxAppearance.position == BoxPosition.top){
                layoutBoxY.constant=(frame?.height)!+layoutBoxY.constant
            }else{
                layoutBoxY.constant=CGFloat(popUpHeight)
            }
            
            layoutIfNeeded()
            UIView.animate(withDuration: 0.15, delay: 0.0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
                self.layoutBoxY.constant=location
                self.layoutIfNeeded()
            }, completion: { (finished) in
                
            })
        }else if(boxAppearance.animation == BoxAnimationType.bounce){
            viewDialogSuperView.alpha=0.0
            if((btnClose) != nil){
                btnClose!.alpha=0.0
            }
            
            UIView.animate(withDuration: 0.15, delay: 0.0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
                self.viewDialogSuperView.transform=self.viewDialogSuperView.transform.scaledBy(x: 1.05, y: 1.05)
                self.viewDialogSuperView.alpha=1.0
            }, completion: { (finished) in
                if(finished){
                    UIView.animate(withDuration: 0.15, delay: 0.0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
                        self.viewDialogSuperView.transform=CGAffineTransform.identity.scaledBy(x: 0.98, y: 0.98)
                        if((self.btnClose) != nil){
                            self.btnClose!.alpha=1.0
                        }
                        
                    }, completion: { (finished) in
                        if(finished){
                            UIView.animate(withDuration: 0.15, delay: 0.0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
                                self.viewDialogSuperView.transform=CGAffineTransform.identity
                            }, completion: { (finished) in
                                if(finished){
                                    if((self.btnClose) != nil){
                                        self.btnClose!.alpha=1.0
                                    }
                                }
                            })
                        }
                    })
                }
            })
        }
    }

    override public func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let hitView = super.hitTest(point, with: event)
        
        if (boxAppearance.containerBackground.style == BoxBackgroundStyle.none) {
            if(boxAppearance.containerBackground.tapToDismiss){
                dismiss()
            }else if(hitView is DialogBoxButton || hitView == viewDialog){
                return hitView
            }
            return nil
        }
        // Else return the hitView (as it could be one of this view's buttons):
        return hitView
    }
    
    // MARK:- ---- Setup layout ---- -
    
    private func setupBackground(superView: UIView){
        let style = boxAppearance.containerBackground.style
        
        self.translatesAutoresizingMaskIntoConstraints=false
        superView.addSubview(self)
        
        let view = self
        let dicKeys=["view": view]
        
        self.superview!.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[view]-0-|", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        self.superview!.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[view]-0-|", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        
        if(style != BoxBackgroundStyle.none){
            if(style == BoxBackgroundStyle.lightBlur || style == BoxBackgroundStyle.extraLightBlur || style == BoxBackgroundStyle.darkBlur){
                viewBg = getBlurbackgroundView(style: style!)
            }else{
                let bgColor = boxAppearance.containerBackground.color
                
                viewBg = getSolidBackgroundViewColor(color: bgColor!)
            }
            self.addSubview(viewBg)
            viewBg.translatesAutoresizingMaskIntoConstraints = false
            
            if(boxAppearance.containerBackground.tapToDismiss == true){
                let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(dismiss))
                addGestureRecognizer(tapGesture)
            }
            
            let dic=["viewBg": viewBg!]
            
            self.superview?.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[viewBg]-0-|", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dic))
            self.superview?.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[viewBg]-0-|", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dic))
        }
    }

    
    private func setupContentLayout() -> Float{
        var y = boxAppearance.layout.padding!
        var minY = y
        
        if(boxAppearance.icon.type != nil && (boxAppearance.icon.position == BoxIconPosition.topCenter || boxAppearance.icon.position == BoxIconPosition.topLeft)){
            let yAxis = setupIcon(yAxis: y)
            if(boxAppearance.icon.position == BoxIconPosition.topCenter){
                y = yAxis
            }else{
                minY = yAxis
            }
        }
        
        if(self.title != nil){
            y = setupTitle(yAxis: y)
        }
        
        if(boxAppearance.icon.type != nil &&  boxAppearance.icon.position == BoxIconPosition.centerBelowTitle){
            y = setupIcon(yAxis: y)
        }
        
        if(self.message != nil){
            y = setupMessage(yAxis: y)
        }
        
        if(boxAppearance.icon.type != nil &&  (boxAppearance.icon.position == BoxIconPosition.centerBelowMessage)){
            y = setupIcon(yAxis: y)
        }
        
        if(minY>y){
            y=minY
        }
        
        if(arrButtons.count != 0){
            y = setupButtons(yAxis: y)
            if(boxAppearance.button.position == BoxButtonPosition.bottom && boxAppearance.button.bottomPosition.layout == BoxButtonBottomPositionLayout.withSpacing){
                y = y + boxAppearance.layout.padding
            }
        }else{
            y = y + boxAppearance.layout.padding
        }

        if(boxAppearance.icon.type != nil &&  (boxAppearance.icon.position == BoxIconPosition.leftFullHeight)){
            setupIcon(yAxis: y)
        }
        
        return y
    }
    
    private func setupDialogView(height: Float){
        popUpHeight=height
        
        viewDialog.clipsToBounds = true
        if(!popUpDisplayed){
            self.addSubview(viewDialogSuperView)
            viewDialogSuperView.translatesAutoresizingMaskIntoConstraints = false
            self.applyContraintsOnDialogBox(height: height)
            self.applySettingsOnContainerView()
            
            viewDialogSuperView.insertSubview(viewDialog, at: 0)
            
            let dic : Dictionary = ["viewPopup": viewDialog!]
            
            viewDialog.translatesAutoresizingMaskIntoConstraints = false
            viewDialogSuperView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[viewPopup]-0-|", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dic))
            viewDialogSuperView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[viewPopup]-0-|", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dic))
        }else{
            UIView.animate(withDuration: 0.15, animations: { 
                self.layoutBoxHeight.constant = CGFloat(height)
                self.layoutBoxWidth.constant = CGFloat(self.boxAppearance.layout.width)
                self.applySettingsOnContainerView()
                self.viewDialogSuperView.layoutIfNeeded()
            }, completion: { (finished) in
                if(finished){
                    UIView.animate(withDuration: 0.15, animations: { 
                        self.viewDialog.alpha=1.0
                    })
                }
            })
        }
        
        if(boxAppearance.closeButton.show){
            setupCloseButton()
        }
        
        if(!popUpDisplayed){
            showDialog()
        }
        popUpDisplayed = true
    }
    
    private func setupTitle(yAxis: Float) -> Float{
        var y = yAxis, x:Float = 0
        var availableWidth: Float
        let padding = getSpacing(boxAppearance.title.padding)!
        let margin = getSpacing(boxAppearance.title.margin)!
        let iconPadding = getSpacing(boxAppearance.icon.padding)!
        
        // Setup y
        if(y != boxAppearance.layout.padding){
            y += boxAppearance.layout.spacing
        }
        y += margin.top
        
        // Setup x and width as per the icon
        availableWidth = boxAppearance.layout.width
        if(boxAppearance.icon.type != nil && (boxAppearance.icon.position == BoxIconPosition.topLeft)){
            let iconMargin = getSpacing(boxAppearance.icon.margin)!
            let iconHorizontalSpacing = (iconPadding.left + iconPadding.right)
            x = boxAppearance.layout.padding + Float(boxAppearance.icon.size.width) + iconHorizontalSpacing + boxAppearance.layout.spacing + margin.left + iconMargin.right + iconMargin.left
            
            if(boxAppearance.icon.separator.show){
                x += boxAppearance.icon.separator.borderWidth
            }
            availableWidth = availableWidth - (x + margin.right)
        }else if(boxAppearance.icon.type != nil && (boxAppearance.icon.position == BoxIconPosition.leftFullHeight)){
            let iconMargin = getSpacing(boxAppearance.icon.margin)!
            x = Float(boxAppearance.icon.size.width) + (iconPadding.left + iconPadding.right) + boxAppearance.layout.spacing + margin.left + iconMargin.right
            
            if(boxAppearance.icon.separator.show){
                x += boxAppearance.icon.separator.borderWidth
            }
            availableWidth = availableWidth - (x + margin.right)
        }else{
            x = boxAppearance.layout.padding + margin.left
            availableWidth -= (boxAppearance.layout.padding + margin.left + margin.right)
        }
        
        if(boxAppearance.button.position == BoxButtonPosition.right){
            let btnMargin = getSpacing(boxAppearance.button.containerMargin)!
            availableWidth -= (boxAppearance.layout.spacing + boxAppearance.button.rightPositionLayout.width + btnMargin.left)
        }else{
            availableWidth -= boxAppearance.layout.padding
        }
        
        // Calculate height
        let maxTitleWidth=availableWidth-(padding.left+padding.right)
        var frame=(title! as NSString).boundingRect(with: CGSize(width: Double(maxTitleWidth), height: 1000.0), options: NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin), attributes: [NSFontAttributeName:boxAppearance.title.font], context: nil)
        frame.size.height=ceil(frame.height)
        
        // Setup title label
        let lblTitle = UILabel.init()
        lblTitle.translatesAutoresizingMaskIntoConstraints=false
        lblTitle.text=title
        lblTitle.numberOfLines=0
        lblTitle.font=boxAppearance.title.font
        lblTitle.textColor=boxAppearance.title.textColor
        lblTitle.textAlignment = boxAppearance.title.textAlignment
        
        // Setup title background
        let viewTitleBg=UIView.init()
        viewTitleBg.translatesAutoresizingMaskIntoConstraints=false
        viewTitleBg.backgroundColor=boxAppearance.title.backgroundColor
        
        // Add contraints on title background
        var dicKeys=["viewTitleBg": viewTitleBg]
        viewDialog.addSubview(viewTitleBg)
        viewDialog.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-(\(x))-[viewTitleBg(\(availableWidth))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        viewDialog.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(\(y))-[viewTitleBg(\(Float(frame.size.height)+(padding.top+padding.bottom)))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        
        // Add contraints on title label
        dicKeys=["lblTitle": lblTitle]
        viewTitleBg.addSubview(lblTitle)
        viewTitleBg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-\(padding.left)-[lblTitle(\(maxTitleWidth))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        viewTitleBg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-\(padding.top)-[lblTitle(\(frame.size.height))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        
        // Setup debug boundary
        applyDebugBoundary(view: viewTitleBg)
        
        // Adjust y position
        y = y + Float(frame.size.height)+(padding.top+padding.bottom) + margin.bottom
        return y
    }
    
    private func setupMessage(yAxis : Float) -> Float{
        var y = yAxis, x:Float = 0
        let margin = getSpacing(boxAppearance.message.margin)!
        
        // Setup y
        if(y != boxAppearance.layout.padding){
            y += boxAppearance.layout.spacing
        }
        y += margin.top
        
        // Setup x and width as per the icon position
        var availableWidth = boxAppearance.layout.width!
        if(boxAppearance.icon.type != nil && (boxAppearance.icon.position == BoxIconPosition.topLeft || boxAppearance.icon.position == BoxIconPosition.leftBesideMessage)){
            let iconMargin = getSpacing(boxAppearance.icon.margin)!
            let iconPadding = getSpacing(boxAppearance.icon.padding)!
            let iconHorizontalSpacing = (iconPadding.left + iconPadding.right)
            x = boxAppearance.layout.padding + Float(boxAppearance.icon.size.width) + iconHorizontalSpacing + boxAppearance.layout.spacing + margin.left + iconMargin.left + iconMargin.right
            
            if(boxAppearance.icon.separator.show){
                x += boxAppearance.icon.separator.borderWidth
            }
            
            availableWidth = availableWidth - x - margin.left - margin.right
        }else if(boxAppearance.icon.type != nil && (boxAppearance.icon.position == BoxIconPosition.leftFullHeight)){
            let iconMargin = getSpacing(boxAppearance.icon.margin)!
            let iconPadding = getSpacing(boxAppearance.icon.padding)!
            let iconHorizontalSpacing = (iconPadding.left + iconPadding.right)
                
            x = Float(boxAppearance.icon.size.width) + iconHorizontalSpacing + boxAppearance.layout.spacing + iconMargin.left + margin.left
            
            if(boxAppearance.icon.separator.show){
                x += boxAppearance.icon.separator.borderWidth
            }
            
            availableWidth = availableWidth - x - margin.left - margin.right
        }else{
            x = boxAppearance.layout.padding + margin.left
            availableWidth -= (boxAppearance.layout.padding + margin.left + margin.right)
        }
        
        if(boxAppearance.button.position == BoxButtonPosition.right){
            let btnMargin = getSpacing(boxAppearance.button.containerMargin)!
            availableWidth -= (boxAppearance.layout.spacing + boxAppearance.button.rightPositionLayout.width + btnMargin.left)
        }else{
            availableWidth -= boxAppearance.layout.padding
        }
        
        // Calculate height
        var frame=(message! as NSString).boundingRect(with: CGSize(width: Double(availableWidth), height: 1000), options: NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin), attributes: [NSFontAttributeName:boxAppearance.message.font], context: nil)
        frame.size.height=ceil(frame.size.height)
        
        // Setup icon as per the message height if it's position set to leftBesideMessage
        if(boxAppearance.icon.type != nil && boxAppearance.icon.position == BoxIconPosition.leftBesideMessage){
            let iconPadding = getSpacing(boxAppearance.icon.padding)!
            let iconHeight = Float(boxAppearance.icon.size.height) + (iconPadding.top + iconPadding.bottom)
            let messageHeight = Float(frame.size.height)
            let yIcon : Float!
            if(messageHeight < iconHeight){
                frame.size.height = CGFloat(iconHeight)
                yIcon = y
            }else{
                yIcon = y + ((messageHeight - iconHeight)/2)
            }
            setupIcon(yAxis: yIcon)
        }
        
        // Setup message label
        let lblDesc=UILabel.init()
        lblDesc.numberOfLines=0
        lblDesc.text=message!
        lblDesc.font=boxAppearance.message.font
        lblDesc.textColor=boxAppearance.message.textColor
        lblDesc.textAlignment=boxAppearance.message.textAlignment
        lblDesc.translatesAutoresizingMaskIntoConstraints=false
        viewDialog.addSubview(lblDesc)
        
        // Add constraints on label
        let dicKeys=["lblDesc": lblDesc]
        viewDialog.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-\(x)-[lblDesc(\(availableWidth))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        viewDialog.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-\(y)-[lblDesc(\(frame.height))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        
        // Add debug boundary
        applyDebugBoundary(view: lblDesc)
        
        return y + Float(frame.size.height) + margin.bottom
    }
    
    @discardableResult private func setupIcon(yAxis: Float) -> Float{
        var x: Float = 0,y: Float = yAxis, width: Float = 0, height: Float = 0, boxWidth: Float = 0
        var margin = getSpacing(boxAppearance.icon.margin)!
        var iconPadding = getSpacing(boxAppearance.icon.padding)!
        let iconSize = boxAppearance.icon.size
        
        // Setup y
        if(y != boxAppearance.layout.padding && boxAppearance.icon.position != BoxIconPosition.leftBesideMessage && boxAppearance.icon.position != BoxIconPosition.leftFullHeight){
            y += boxAppearance.layout.spacing
        }
        
        // Reset top and bottom margin if position is leftBesideMessage
        if(boxAppearance.icon.margin != nil && boxAppearance.icon.position == BoxIconPosition.leftBesideMessage){
            margin.top = 0
            margin.bottom = 0
        }
        
        // Setup Icon as per the type
        if(boxAppearance.icon.type != nil && boxAppearance.icon.type == BoxIconType.loading){
            if(boxAppearance.icon.loading.imageName == nil){
                let activityIndicator = UIActivityIndicatorView.init(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
                activityIndicator.color=boxAppearance.icon.loading.color
                activityIndicator.startAnimating()
                viewIcon=activityIndicator
            }else{
                let imageView = UIImageView.init(image: UIImage(named: boxAppearance.icon.loading.imageName!))
                imageView.clipsToBounds=true
                imageView.contentMode = UIViewContentMode.scaleToFill
                viewIcon=imageView
                
                let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
                rotateAnimation.fromValue = 0.0
                rotateAnimation.toValue = CGFloat(.pi * 2.0)
                rotateAnimation.duration = 1.0
                rotateAnimation.repeatCount = Float.greatestFiniteMagnitude;
                
                imageView.layer.add(rotateAnimation, forKey: nil)
            }
        }else if(boxAppearance.icon.type != nil && boxAppearance.icon.type == BoxIconType.fontAwesome){
            let lbl = UILabel.init()
            lbl.font=boxAppearance.icon.fontAwesome.font
            lbl.text=boxAppearance.icon.fontAwesome.fontCode
            lbl.textAlignment=NSTextAlignment.center
            lbl.textColor = boxAppearance.icon.fontAwesome.fontCodeColor
            viewIcon=lbl
        }else{
            let imageView = UIImageView.init(image: UIImage(named: boxAppearance.icon.image.name))
            imageView.clipsToBounds=true
            imageView.contentMode = boxAppearance.icon.image.contentMode
            viewIcon=imageView
        }
        
        // Setup Icon background
        width = Float((iconSize?.width)!) + iconPadding.left + iconPadding.right
        height = Float((iconSize?.height)!) + iconPadding.top + iconPadding.bottom
        
        if(boxAppearance.icon.position == BoxIconPosition.topCenter || boxAppearance.icon.position == BoxIconPosition.centerBelowTitle || boxAppearance.icon.position == BoxIconPosition.centerBelowMessage){
            if(boxAppearance.button.position == BoxButtonPosition.right){
                let btnMargin = getSpacing(boxAppearance.button.containerMargin)!
                boxWidth = boxAppearance.layout.width - boxAppearance.button.rightPositionLayout.width - btnMargin.left
                x = ((boxWidth)/2.0)-(width/2.0)
            }else{
                boxWidth = boxAppearance.layout.width - (boxAppearance.layout.padding * 2)
                x = boxAppearance.layout.padding + ((boxWidth)/2.0)-(width/2.0)
            }
            
            y = y + margin.top
            
        }else if(boxAppearance.icon.position == BoxIconPosition.topLeft || boxAppearance.icon.position == BoxIconPosition.leftBesideMessage){
            x = boxAppearance.layout.padding + margin.left
            y = y + margin.top
        }else if(boxAppearance.icon.position == BoxIconPosition.leftFullHeight){
            x = 0
            if(Float((iconSize?.height)!) > (y)){
                height = Float((iconSize?.height)!)
                boxAppearance.icon.padding = "\(iconPadding.left)|0|\(iconPadding.right)|0"
                iconPadding.top = 0
                iconPadding.bottom = 0
            }else{
                let verticalPadding = ((y - Float((iconSize?.height)!)) / 2)
                boxAppearance.icon.padding = "\(iconPadding.left)|\(verticalPadding)|\(iconPadding.right)|\(verticalPadding)"
                iconPadding.top = verticalPadding
                iconPadding.bottom = verticalPadding
                height = y
            }
            y=0
        }
        
        let superView : UIView!
        if(boxAppearance.icon.position == BoxIconPosition.leftFullHeight){
            superView = viewDialog
        }else{
            if(y < 0){
                superView = viewDialogSuperView
            }else{
                superView = viewDialog
            }
        }
        let viewBg = UIView()
        viewBg.layer.cornerRadius = CGFloat(boxAppearance.icon.cornerRadius)
        viewBg.translatesAutoresizingMaskIntoConstraints = false
        superView.addSubview(viewBg)
        var dicKeys = ["view":viewBg]
        superView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-(\(x))-[view(\(width))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        superView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:|-(\(y))-[view(\(height))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        viewBg.backgroundColor = boxAppearance.icon.backgroundColor;
        
        applyDebugBoundary(view: viewBg)
        
        // Setup Icon
        viewIcon.translatesAutoresizingMaskIntoConstraints=false
        viewBg.addSubview(viewIcon)
        dicKeys = ["view":viewIcon]
        viewBg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-(\(iconPadding.left))-[view]-(\(iconPadding.right))-|", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        
        viewBg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:|-(\(iconPadding.top))-[view]-(\(iconPadding.bottom))-|", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        applyDebugBoundary(view: viewIcon)
        
        // Setup Separator
        if(boxAppearance.icon.separator.show){
            var sepX : Float = 0.0, sepY : Float = 0.0, sepWidth : Float = 0.0, sepHeight : Float = 0.0
            
            if(boxAppearance.icon.position == BoxIconPosition.topCenter || boxAppearance.icon.position == BoxIconPosition.centerBelowTitle || boxAppearance.icon.position == BoxIconPosition.centerBelowMessage){
                sepX = boxAppearance.layout.padding + boxAppearance.icon.separator.margin
                sepY = y + height
                if(arrButtons.count != 0 && boxAppearance.button.position == BoxButtonPosition.right){
                    let btnMargin = getSpacing(boxAppearance.button.containerMargin)!
                    sepWidth = boxAppearance.layout.width - (sepX + boxAppearance.button.rightPositionLayout.width + boxAppearance.icon.separator.margin + boxAppearance.layout.spacing + btnMargin.left)
                }else{
                    sepWidth = boxAppearance.layout.width - (sepX + boxAppearance.icon.separator.margin + boxAppearance.layout.padding)
                }
                sepHeight = boxAppearance.icon.separator.borderWidth
                
                y = y + sepHeight
            }else if (boxAppearance.icon.position == BoxIconPosition.leftFullHeight || boxAppearance.icon.position == BoxIconPosition.topLeft || boxAppearance.icon.position == BoxIconPosition.leftBesideMessage){
                sepX = x + width
                sepY = y + boxAppearance.icon.separator.margin
                sepWidth = boxAppearance.icon.separator.borderWidth
                sepHeight = height - (boxAppearance.icon.separator.margin * 2)
            }
            
            let viewSeparator = UIView()
            viewSeparator.translatesAutoresizingMaskIntoConstraints = false
            viewSeparator.backgroundColor = boxAppearance.icon.separator.color
            
            viewDialogSuperView.addSubview(viewSeparator)
            
            dicKeys = ["view":viewSeparator]
            viewDialogSuperView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-(\(sepX))-[view(\((sepWidth)))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
            
            viewDialogSuperView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:|-(\(sepY))-[view(\(sepHeight))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        }
        
        if(boxAppearance.icon.position != BoxIconPosition.leftFullHeight){
            y = y + height + margin.bottom
        }
        return y
    }
    
    @discardableResult private func setupButtons(yAxis : Float) -> Float{
        var btnHeight: Float, btnWidth: Float
        var containerX : Float = 0, containerY: Float = 0, containerWidth : Float = 0
        var noOfButtonsInSigleRow: Int, noOfButtons = arrButtons.count, borderWidth: Float=0.0, height : Float = 0.0, width: Float=0.0
        var borderColor : UIColor!
        
        noOfButtonsInSigleRow = boxAppearance.button.bottomPosition.maximumNoOfButtonsInSingleRow
        if(noOfButtonsInSigleRow>arrButtons.count){
            noOfButtonsInSigleRow = arrButtons.count as Int
        }
        
        btnHeight=boxAppearance.button.height
        
        // Setup button container
        btnContainer = UIView.init()
        btnContainer.clipsToBounds = true
        applyDebugBoundary(view: btnContainer)
        btnContainer.translatesAutoresizingMaskIntoConstraints = false
        viewDialog.addSubview(btnContainer)
        btnContainer.backgroundColor = UIColor.clear
        
        let margin = getSpacing(boxAppearance.button.containerMargin)!
        let iconPadding = getSpacing(boxAppearance.icon.padding)!
        
        if(boxAppearance.button.position == BoxButtonPosition.bottom && boxAppearance.button.bottomPosition.layout == BoxButtonBottomPositionLayout.withoutSpacing){

            if(boxAppearance.icon.type != nil && boxAppearance.icon.position == BoxIconPosition.leftFullHeight){
                containerX = Float(boxAppearance.icon.size.width) + (iconPadding.left + iconPadding.right)
                containerWidth = boxAppearance.layout.width! - containerX
            }else{
                containerX = 0
                containerWidth = boxAppearance.layout.width!
            }
            
            containerY = margin.top + yAxis + boxAppearance.layout.spacing
            borderWidth=boxAppearance.button.borderWidth
            borderColor=boxAppearance.button.borderColor
            
            var x = -borderWidth, y: Float=0, row=0, btnCount=1
            
            btnWidth=containerWidth/Float(noOfButtonsInSigleRow)
            height=btnHeight
            
            var bgColor: UIColor, textColor: UIColor
            var font : UIFont
            
            for i in 1...noOfButtons {
                let btn=arrButtons[i-1]
                
                if(btn.appearance != nil && btn.appearance.backgroundColor != nil){
                    bgColor=btn.appearance.backgroundColor!
                }else{
                    bgColor=boxAppearance.button.backgroundColor
                }
                
                if(btn.appearance != nil && btn.appearance.textColor != nil){
                    textColor=btn.appearance.textColor!
                }else{
                    textColor=boxAppearance.button.textColor
                }
                
                if(btn.appearance != nil && btn.appearance.titleFont != nil){
                    font=btn.appearance.titleFont!
                }else{
                    font=boxAppearance.button.titleFont
                }
                
                btn.setBackgroundImage(imageWithColor(color: bgColor), for: UIControlState.normal)
                btn.setTitleColor(textColor, for: UIControlState.normal)
                btn.titleLabel?.font=font
                btn.layer.borderWidth=CGFloat(borderWidth)
                btn.layer.borderColor=borderColor.cgColor
                btnContainer.addSubview(btn)
                
                if(btnCount % noOfButtonsInSigleRow == 0){
                    width=(containerWidth-x)+borderWidth
                }else if(btnCount==1){
                    width=btnWidth+1
                }else{
                    width=btnWidth
                }
                
                let dicKeys = ["btn": btn]
                btnContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-(\(x))-[btn(\(width))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
                btnContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-\(y)-[btn(\(btnHeight))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
                
                if(btnCount%noOfButtonsInSigleRow==0){
                    row += 1
                    btnCount=1
                    y = y + btnHeight-borderWidth
                    height = y
                    
                    let remainingBtns=arrButtons.count-i
                    if(remainingBtns != 0 && remainingBtns<noOfButtonsInSigleRow){
                        noOfButtonsInSigleRow=remainingBtns
                        btnWidth=containerWidth / Float(noOfButtonsInSigleRow)
                    }
                    x = -borderWidth
                }else{
                    x+=width-borderWidth
                    btnCount += 1
                }
            }
            height-=borderWidth
            containerY += margin.bottom
        }else if(boxAppearance.button.position == BoxButtonPosition.bottom && boxAppearance.button.bottomPosition.layout == BoxButtonBottomPositionLayout.withSpacing){
            containerY = yAxis + margin.top + boxAppearance.layout.spacing
            
            if(boxAppearance.icon.type != nil && boxAppearance.icon.position == BoxIconPosition.leftFullHeight){
                let iconMargin = getSpacing(boxAppearance.icon.margin)!
                containerX = Float(boxAppearance.icon.size.width) + (iconPadding.left + iconPadding.right) + boxAppearance.layout.spacing + iconMargin.right
                containerWidth = boxAppearance.layout.width! - margin.left - margin.right - containerX - boxAppearance.layout.padding
            }else{
                containerX = boxAppearance.layout.padding + margin.left
                containerWidth = boxAppearance.layout.width! - margin.left - margin.right - (boxAppearance.layout.padding * 2)
            }
            
            var hSpacing: Float, vSpacing: Float,x : Float=0,y: Float=0,roundedRadius: Float=0
            
            hSpacing = boxAppearance.button.bottomPosition.horizontalSpacing
            vSpacing=boxAppearance.button.bottomPosition.verticalSpacing
            roundedRadius = boxAppearance.button.bottomPosition.cornerRadius
            btnWidth = (containerWidth-(Float(noOfButtonsInSigleRow-1)*hSpacing))/Float(noOfButtonsInSigleRow)
            
            var bgColor: UIColor, textColor: UIColor
            var font : UIFont
            
            var btnCount = 1
            
            for i in 1...arrButtons.count{
                let btn = arrButtons[i-1]
                
                if(btn.appearance != nil && btn.appearance.backgroundColor != nil){
                    bgColor=btn.appearance.backgroundColor!
                }else{
                    bgColor=boxAppearance.button.backgroundColor
                }
                
                if(btn.appearance != nil && btn.appearance.textColor != nil){
                    textColor=btn.appearance.textColor!
                }else{
                    textColor=boxAppearance.button.textColor
                }
                
                if(btn.appearance != nil && btn.appearance.titleFont != nil){
                    font=btn.appearance.titleFont!
                }else{
                    font=boxAppearance.button.titleFont
                }
                
                if(btn.appearance != nil && btn.appearance.borderWidth != nil){
                    borderWidth = btn.appearance.borderWidth!
                }else{
                    borderWidth=boxAppearance.button.borderWidth
                }
                
                if(btn.appearance != nil && btn.appearance.borderColor != nil){
                    borderColor = btn.appearance.borderColor!
                }else{
                    borderColor=boxAppearance.button.borderColor
                }
                
                btn.setBackgroundImage(imageWithColor(color: bgColor), for: UIControlState.normal)
                btn.setTitleColor(textColor, for: UIControlState.normal)
                btn.titleLabel?.font=font
                btnContainer.addSubview(btn)
                btn.layer.cornerRadius = CGFloat(roundedRadius)
                btn.layer.borderWidth = CGFloat(borderWidth)
                btn.layer.borderColor = borderColor.cgColor
                
                let dicKeys=["btn": btn]
                btnContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-(\(x))-[btn(\(btnWidth))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
                btnContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(\(y))-[btn(\(btnHeight))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
                
                if(btnCount%noOfButtonsInSigleRow==0){
                    btnCount = 1
                    x=0
                    y=y + btnHeight+vSpacing
                    height=y
                    
                    let remainingBtns=arrButtons.count-i
                    if(remainingBtns<noOfButtonsInSigleRow){
                        noOfButtonsInSigleRow=remainingBtns
                        let w=remainingBtns-1
                        btnWidth=(containerWidth-(Float(w)*hSpacing))/Float(remainingBtns)
                    }
                    
                    if(i==arrButtons.count){
                        height-=vSpacing
                    }
                    
                }else{
                    btnCount = btnCount + 1
                    x+=btnWidth+hSpacing
                }
            }
        }else{
            var y: Float = 0
            var border : Float
            border=boxAppearance.button.borderWidth
            
            height = (yAxis + boxAppearance.layout.padding)
            btnHeight = (height / Float((arrButtons.count)))
            
            var borderColor: UIColor
            
            borderColor=boxAppearance.button.borderColor
            containerWidth=boxAppearance.button.rightPositionLayout.width
            containerX = boxAppearance.layout.width - containerWidth
            
            var bgColor: UIColor, textColor: UIColor
            var font : UIFont
            
            for i in 1...arrButtons.count{
                let btn=arrButtons[i-1]
                
                if(btn.appearance != nil && btn.appearance.backgroundColor != nil){
                    bgColor=btn.appearance.backgroundColor!
                }else{
                    bgColor=boxAppearance.button.backgroundColor
                }
                
                if(btn.appearance != nil && btn.appearance.textColor != nil){
                    textColor=btn.appearance.textColor!
                }else{
                    textColor=boxAppearance.button.textColor
                }
                
                if(btn.appearance != nil && btn.appearance.titleFont != nil){
                    font=btn.appearance.titleFont!
                }else{
                    font=boxAppearance.button.titleFont
                }
                
                btn.setBackgroundImage(imageWithColor(color: bgColor), for: UIControlState.normal)
                btn.setTitleColor(textColor, for: UIControlState.normal)
                btn.titleLabel?.font=font
                
                btnContainer.addSubview(btn)
                if(border != 0){
                    btn.layer.borderWidth = CGFloat(border)
                    btn.layer.borderColor = borderColor.cgColor
                }
                
                let dicKeys=["btn":btn]
                btnContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-(0)-[btn(\(containerWidth + border))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
                btnContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(\(y-border))-[btn(\(btnHeight+Float(border)+border*Float(i)))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
                y=y+btnHeight
            }
            
            if(boxAppearance.button.borderWidth != 0){
                let viewSeparator = UIView()
                viewSeparator.translatesAutoresizingMaskIntoConstraints = false
                viewSeparator.backgroundColor = boxAppearance.button.borderColor
                
                viewDialog.addSubview(viewSeparator)
                
                let dicKeys = ["view":viewSeparator]
                viewDialog.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-(\(containerX))-[view(\((boxAppearance.button.borderWidth!)))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
                
                viewDialog.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:|-(\(0))-[view(\(height))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
            }
            
        }
        
        let dicKeys=["btnContainer": btnContainer!]
        viewDialog.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-(\(containerX))-[btnContainer(\(containerWidth))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        viewDialog.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-\(containerY)-[btnContainer(\(height))]", options: NSLayoutFormatOptions.directionLeftToRight, metrics: nil, views: dicKeys))
        
        if(boxAppearance.button.position == BoxButtonPosition.bottom && boxAppearance.button.bottomPosition.layout == BoxButtonBottomPositionLayout.withSpacing){
            containerY += margin.bottom
        }
        return containerY + height
    }
    
    private func setupCloseButton(){
        btnClose = DialogBoxButton.init()
        if(closeBlock != nil){
            btnClose?.actionBlock = closeBlock
        }
        btnClose?.addTarget(self, action: #selector(buttonTapped(button:)), for: UIControlEvents.touchUpInside)
        
        let size=boxAppearance.closeButton.size!
        
        if( boxAppearance.closeButton.imageName != nil){
            btnClose?.setImage(UIImage(named:boxAppearance.closeButton.imageName!), for: UIControlState.normal)
        }else{
            var title : String
            
            if(boxAppearance.closeButton.title != nil){
                title=boxAppearance.closeButton.title!
            }else{
                title = "X"
            }
            
            btnClose?.setTitle(title, for: UIControlState.normal)
            if(boxAppearance.closeButton.position == BoxCloseButtonPosition.cornerOutside){
                btnClose?.layer.cornerRadius = CGFloat(size.width / 2.0)
                btnClose?.clipsToBounds = true
            }
        }
        
        btnClose?.setTitleColor(boxAppearance.closeButton.textColor!, for: UIControlState.normal)
        
        if(boxAppearance.closeButton.backgroundColor != nil){
            btnClose?.setBackgroundImage(imageWithColor(color: boxAppearance.closeButton.backgroundColor!), for: UIControlState.normal)
        }
        
        btnClose?.titleLabel?.font=boxAppearance.closeButton.font!
        btnClose?.translatesAutoresizingMaskIntoConstraints = false
        
        if(boxAppearance.closeButton.position != nil && boxAppearance.closeButton.position! == BoxCloseButtonPosition.cornerOutside){
            self.addSubview(btnClose!)
            
            let layoutCenterX = NSLayoutConstraint.init(item: btnClose!,
                                                        attribute: NSLayoutAttribute.trailing,
                                                        relatedBy: NSLayoutRelation.equal,
                                                        toItem: viewDialogSuperView,
                                                        attribute: NSLayoutAttribute.trailing,
                                                        multiplier: 1,
                                                        constant: (size.width/2))
            self.addConstraint(layoutCenterX)
            
            let layoutCenterY = NSLayoutConstraint.init(item: btnClose!,
                                                        attribute: NSLayoutAttribute.top,
                                                        relatedBy: NSLayoutRelation.equal,
                                                        toItem: viewDialogSuperView,
                                                        attribute: NSLayoutAttribute.top,
                                                        multiplier: 1,
                                                        constant: -(size.height/2))
            self.addConstraint(layoutCenterY)
            
            let layoutWidth = NSLayoutConstraint.init(item: btnClose!,
                                                      attribute: NSLayoutAttribute.width,
                                                      relatedBy: NSLayoutRelation.equal,
                                                      toItem: nil,
                                                      attribute: NSLayoutAttribute.notAnAttribute,
                                                      multiplier: 1,
                                                      constant: size.width)
            self.addConstraint(layoutWidth)
            
            let layoutHeight = NSLayoutConstraint.init(item: btnClose!,
                                                       attribute: NSLayoutAttribute.height,
                                                       relatedBy: NSLayoutRelation.equal,
                                                       toItem: nil,
                                                       attribute: NSLayoutAttribute.notAnAttribute,
                                                       multiplier: 1,
                                                       constant: size.height)
            self.addConstraint(layoutHeight)
        }else if(boxAppearance.closeButton.position != nil && boxAppearance.closeButton.position! == BoxCloseButtonPosition.cornerInside){
            viewDialog.addSubview(btnClose!)
            var top : Float=0,right: Float=0
            
            if(boxAppearance.closeButton.margin != nil){
                var arr=(boxAppearance.closeButton.margin)!.components(separatedBy: "|")
                if(arr.count==2){
                    top=Float(arr[0])!
                    right=Float(arr[1])!
                }
            }
            
            let layoutX = NSLayoutConstraint.init(item: btnClose!,
                                                  attribute: NSLayoutAttribute.right,
                                                  relatedBy: NSLayoutRelation.equal,
                                                  toItem: btnClose?.superview,
                                                  attribute: NSLayoutAttribute.right,
                                                  multiplier: 1,
                                                  constant: -(CGFloat(right)))
            viewDialog.addConstraint(layoutX)
            
            let layoutY = NSLayoutConstraint.init(item: btnClose!,
                                                  attribute: NSLayoutAttribute.top,
                                                  relatedBy: NSLayoutRelation.equal,
                                                  toItem: btnClose?.superview,
                                                  attribute: NSLayoutAttribute.top,
                                                  multiplier: 1,
                                                  constant: CGFloat(top))
            viewDialog.addConstraint(layoutY)
            
            let layoutWidth = NSLayoutConstraint.init(item: btnClose!,
                                                      attribute: NSLayoutAttribute.width,
                                                      relatedBy: NSLayoutRelation.equal,
                                                      toItem: nil,
                                                      attribute: NSLayoutAttribute.notAnAttribute,
                                                      multiplier: 1,
                                                      constant: size.width)
            viewDialog.addConstraint(layoutWidth)
            
            let layoutHeight = NSLayoutConstraint.init(item: btnClose!,
                                                       attribute: NSLayoutAttribute.height,
                                                       relatedBy: NSLayoutRelation.equal,
                                                       toItem: nil,
                                                       attribute: NSLayoutAttribute.notAnAttribute,
                                                       multiplier: 1,
                                                       constant: size.height)
            viewDialog.addConstraint(layoutHeight)
        }
        
        applyDebugBoundary(view: btnClose!)
    }

    
    //MARK:- ---- Add constraints ---- -
    
    private func applyContraintsOnDialogBox(height: Float){
        if(boxAppearance.position==BoxPosition.center){
            applyCenterConstrainsOnBox(height: Int(height))
        }else if(boxAppearance.position==BoxPosition.top){
            applyTopCenterConstrainsOnBox(height: Int(height))
        }else if(boxAppearance.position==BoxPosition.bottom){
            applyBottomCenterConstrainsOnBox(height: Int(height))
        }
    }
    
    private func applySettingsOnContainerView(){
        var shadowColor: UIColor
        viewDialogSuperView.backgroundColor=boxAppearance.layout.backgroundColor
        
        if(boxAppearance.layout.cornerRadius>0){
            viewDialogSuperView.layer.cornerRadius = CGFloat(boxAppearance.layout.cornerRadius)
            viewDialog.layer.cornerRadius = CGFloat(boxAppearance.layout.cornerRadius)
        }
        
        shadowColor = boxAppearance.layout.shadowColor
        
        if(boxAppearance.layout.enableShadow){
            let shadowPath = UIBezierPath.init(rect:CGRect(x: -3.0, y: 0.0, width: Double(boxAppearance.layout.width + 6.0), height: Double(popUpHeight + 6.0)))
            viewDialogSuperView.layer.masksToBounds = false
            viewDialogSuperView.layer.shadowColor = shadowColor.cgColor
            viewDialogSuperView.layer.shadowOpacity = 0.6
            viewDialogSuperView.layer.shadowPath = shadowPath.cgPath
            viewDialogSuperView.layer.shadowRadius=20
        }else{
            viewDialogSuperView.layer.shadowPath = nil
        }
        
        if(boxAppearance.layout.borderWidth > 0){
            viewDialogSuperView.layer.borderWidth=CGFloat(boxAppearance.layout.borderWidth)
            viewDialogSuperView.layer.borderColor=boxAppearance.layout.borderColor.cgColor
        }else{
            viewDialogSuperView.layer.borderWidth=0
        }
    }
    
    private func applyCenterConstrainsOnBox(height: Int){
        
        layoutBoxX=NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: viewDialogSuperView.superview, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        self.addConstraint(layoutBoxX)
        
        layoutBoxWidth=NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: CGFloat(boxAppearance.layout.width))
        self.addConstraint(layoutBoxWidth)
        
        layoutBoxY=NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: viewDialogSuperView.superview, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0)
        addConstraint(layoutBoxY)
        
        layoutBoxHeight=NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: CGFloat(height))
        addConstraint(layoutBoxHeight)
    }
    
    private func applyTopCenterConstrainsOnBox(height: Int){
        let top = boxAppearance.positionMargin
        
        layoutBoxX = NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: viewDialogSuperView.superview, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        addConstraint(layoutBoxX)
        
        layoutBoxWidth = NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: CGFloat(boxAppearance.layout.width))
        addConstraint(layoutBoxWidth)
        
        layoutBoxY = NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: viewDialogSuperView.superview, attribute: NSLayoutAttribute.top, multiplier: 1, constant: CGFloat(top!))
        addConstraint(layoutBoxY)
        
        layoutBoxHeight = NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: CGFloat(height))
        addConstraint(layoutBoxHeight)
        
    }
    
    private func applyBottomCenterConstrainsOnBox(height: Int){
        let bottom = boxAppearance.positionMargin
        
        layoutBoxX = NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: viewDialogSuperView.superview, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        addConstraint(layoutBoxX)
        
        
        layoutBoxWidth = NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: CGFloat(boxAppearance.layout.width))
        addConstraint(layoutBoxWidth)
        
        
        layoutBoxY = NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: viewDialogSuperView.superview, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: CGFloat(-bottom!))
        addConstraint(layoutBoxY)
        
        
        layoutBoxHeight = NSLayoutConstraint.init(item: viewDialogSuperView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: CGFloat(height))
        addConstraint(layoutBoxHeight)
    }

    //MARK:- ---- Button Events ---- -
    func buttonTapped(button: DialogBoxButton){
        if((button.actionBlock) != nil){
            button.actionBlock!()
        }
        dismiss()
    }
    
    //MARK:- ---- Helper Methods ---- -
    
    func applyDebugBoundary(view: UIView){
        if(DebugBorderEnable){
            let color : UIColor = DebugBorderColor
            view.layer.borderColor = color.cgColor
            view.layer.borderWidth = 1
        }
    }
    
    func getSpacing(_ string:String?) -> Spacing!{
        var left : Float! = 0, top : Float! = 0, right : Float! = 0, bottom : Float! = 0
        if(string != nil){
            var arr=(string!).components(separatedBy: "|")
            
            if(arr.count == 4){
                left = Float(arr[0])!
                top = Float(arr[1])!
                right = Float(arr[2])!
                bottom = Float(arr[3])!
            }
        }
        let spacing = Spacing(left: left, top: top, right: right, bottom: bottom)
        return spacing
    }
    
    func getSolidBackgroundViewColor(color: UIColor) -> UIView{
        let view = UIView.init()
        view.backgroundColor=color
        return view
    }
    
    func getBlurbackgroundView(style: BoxBackgroundStyle) -> UIView{
        var blurEffect: UIBlurEffect
        var blurStyle: UIBlurEffectStyle
        
        switch (style) {
        case .darkBlur:
            blurStyle = UIBlurEffectStyle.dark
            break
            
        case .lightBlur:
            blurStyle=UIBlurEffectStyle.light
            break
            
        default:
            blurStyle=UIBlurEffectStyle.extraLight
            break
        }
        
        blurEffect = UIBlurEffect.init(style: blurStyle)
        
        let blurEffectView = UIVisualEffectView.init(effect: blurEffect)
        blurEffectView.translatesAutoresizingMaskIntoConstraints = false
        return blurEffectView
    }
    
    func imageWithColor(color: UIColor) -> UIImage{
        let rect = CGRect(x:0.0,y:0.0,width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }

}

//MARK:-
class DialogBoxButton: UIButton {
//MARK:-
    var title: String!
    var appearance: BoxButtonAppearance!
    var actionBlock : (() -> ())?
}
//MARK:-
struct Rect {
//MARK:-
    var x : Float
    var y : Float
    var width : Float
    var height : Float
}

//MARK:-
struct Spacing {
//MARK:-
    var left : Float
    var top : Float
    var right : Float
    var bottom : Float
}

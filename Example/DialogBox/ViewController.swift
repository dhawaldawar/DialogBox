//
//  ViewController.swift
//  DialogBox
//
//  Created by Dhawal on 24/06/17.
//  Copyright © 2017 Dhawal. All rights reserved.
//

import UIKit
import DialogBox

struct Section{
    static let Alert = 0
    static let Notification = 1
    static let Loading = 2
    static let ScreenMessages = 3
    static let Animation = 4
    static let Background = 5
}

struct Animation {
    static let fade = "Fade"
    static let slideFromTop = "Slide from Top"
    static let slideFromBottom = "Slide from Bottom"
    static let bounce = "Bounce"
    static let none = "None"
}

struct Background {
    static let darkBlur = "Dark blur"
    static let lightBlur = "Light blur"
    static let extraLightBlur = "Extra light blur"
    static let custom = "Custom"
    static let none = "None"
}

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    //MARK:- Private Data Members -
    
    private let alertsCount = 14
    private var notificationsCount = 8
    private var loadingsCount = 8
    private var messagesCount = 5
    private var arrAnimations = Array<String>()
    private var arrBackground = Array<String>()
    @IBOutlet weak private var collectionView : UICollectionView!
    
    //MARK:- Life Cycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupAnimations()
        setupBackgrounds()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- Alerts -

    func showAlertAtIndex(index: Int){
        switch index {
        case 1:
            showAlert_1()
        case 2:
            showAlert_2()
        case 3:
            showAlert_3()
        case 4:
            showAlert_4()
        case 5:
            showAlert_5()
        case 6:
            showAlert_6()
        case 7:
            showAlert_7()
        case 8:
            showAlert_8()
        case 9:
            showAlert_9()
        case 10:
            showAlert_10()
        case 11:
            showAlert_11()
        case 12:
            showAlert_12()
        case 13:
            showAlert_13()
        case 14:
            showAlert_14()
        default: break
            
        }
    }
    
    func showAlert_1(){
        DialogBox.show(title: "Success", message: "You are now a new member.", boxApp: BoxAppearanceAlert._1, buttonTitle: "Ok", buttonAppearance: nil, actionBlock: nil)    }
    
    func showAlert_2(){
        DialogBox.show(title: "Success", message: "You are now a new member.", boxApp: BoxAppearanceAlert._2, buttonTitle: "Ok", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showAlert_3(){
        DialogBox.show(title: "Thank you!", message: "You are now a new member.", boxApp: BoxAppearanceAlert._3, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showAlert_4(){
        DialogBox.show(title: "Thank you!", message: "You are now a new member.", boxApp: BoxAppearanceAlert._4, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showAlert_5(){
        DialogBox.show(title: "Thank you!", message: "You are a new member.", boxApp: BoxAppearanceAlert._5, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showAlert_6(){
        let dialogBox = DialogBox.init()
        dialogBox.addButton(title: "No", buttonAppearance: BoxAppearanceAlert.btnConfirmationNo) {
            print("Pressed No")
        }
        dialogBox.addButton(title: "Yes", buttonAppearance: BoxAppearanceAlert.btnConfirmationYes) {
            print("Pressed Yes")
        }
        dialogBox.show(title: "Warning!", message: "Do you really want to proceed with it?", boxApp: BoxAppearanceAlert._6)
    }
    
    func showAlert_7(){
        let dialogBox = DialogBox.init()
        dialogBox.addButton(title: "No", buttonAppearance: BoxAppearanceAlert.btnConfirmationNo) {
            print("Pressed No")
        }
        dialogBox.addButton(title: "Yes", buttonAppearance: BoxAppearanceAlert.btnConfirmationYes) {
            print("Pressed Yes")
        }
        dialogBox.show(title: "Warning!", message: "Do you really want to proceed with it?", boxApp: BoxAppearanceAlert._7)
    }
    
    func showAlert_8(){
        let dialogBox = DialogBox.init()
        dialogBox.addButton(title: "No", buttonAppearance: BoxAppearanceAlert.btnConfirmationNo) {
            print("Pressed No")
        }
        dialogBox.addButton(title: "Not sure", buttonAppearance: BoxAppearanceAlert.btnConfirmationNo) {
            print("Pressed Cancel")
        }
        dialogBox.addButton(title: "Yes", buttonAppearance: BoxAppearanceAlert.btnConfirmationYes) {
            print("Pressed Yes")
        }
        dialogBox.show(title: "Warning!", message: "Do you really want to proceed with it?", boxApp: BoxAppearanceAlert._6)
    }
    
    func showAlert_9(){
        let dialogBox = DialogBox.init()
        dialogBox.addButton(title: "No", buttonAppearance: BoxAppearanceAlert.btnTitleBgNo) {
            print("Pressed No")
        }
        dialogBox.addButton(title: "Go to App Store", buttonAppearance: BoxAppearanceAlert.btnTitleBgAppStore) {
            print("Pressed Cancel")
        }
        dialogBox.show(title: "Update required!", message: "We have made tremendous changes in the new version, would you like to update the APP now?", boxApp: BoxAppearanceAlert._9)
    }
    
    func showAlert_10(){
        DialogBox.show(title: "Error!", message: "Oops, something went wrong.", boxApp: BoxAppearanceAlert._10, buttonTitle: "Try Again", buttonAppearance: nil, buttonBlock: {
            print("Pressed Try Again")
        }, closeBlock: {
            print("Pressed Cancel")
        })
    }
    
    func showAlert_11(){
        DialogBox.show(title: "Thank you!", message: "You are now a new member.", boxApp: BoxAppearanceAlert._11, closeBlock:{
            print("Pressed Cancel")
        })
    }
    
    func showAlert_12(){
        let dialogBox = DialogBox.init()
        dialogBox.addButton(title: "No", buttonAppearance: nil) {
            print("Pressed No")
        }
        dialogBox.addButton(title: "Yes", buttonAppearance: nil) {
            print("Pressed Yes")
        }
        dialogBox.show(title: "Warning!", message: "Do you really want to proceed with it?", boxApp: BoxAppearanceAlert._12)
    }
    
    func showAlert_13(){
        DialogBox.show(title: "Success!", message: "Your email has been sent.", boxApp: BoxAppearanceAlert._13, buttonTitle: "Go back", buttonAppearance: nil) {
            print("Go back")
        }
    }
    
    func showAlert_14(){
        DialogBox.show(title: nil, message: "Profile Saved", boxApp: BoxAppearanceAlert._14)
    }
    
    // MARK:- Notifications -
    func showNotificationAtIndex(index: Int){
        switch index {
        case 1:
            showNotification_1()
        case 2:
            showNotification_2()
        case 3:
            showNotification_3()
        case 4:
            showNotification_4()
        case 5:
            showNotification_5()
        case 6:
            showNotification_6()
        case 7:
            showNotification_7()
        case 8:
            showNotification_8()
        default: break
            
        }
    }
    
    func showNotification_1(){
        DialogBox.show(title: "Thank you!", message: "You are now a new member.", boxApp: BoxAppearanceNotification._1)
    }
    
    func showNotification_2(){
        DialogBox.show(title: "Internet connection required.", message: nil, boxApp: BoxAppearanceNotification._2, superView: self.view)
    }
    
    func showNotification_3(){
        DialogBox.show(title: "Internet connection required.", message: nil, boxApp: BoxAppearanceNotification._3, superView: self.view)
    }

    func showNotification_4(){
        DialogBox.show(title: "Login successfull.", message: nil, boxApp: BoxAppearanceNotification._4)
    }
    
    func showNotification_5(){
        DialogBox.show(title: "Thank you!", message: "You are a new member.", boxApp: BoxAppearanceNotification._5, buttonTitle: "Ok", buttonAppearance: nil) {
            print("Pressed Continue")
        }
    }
    
    func showNotification_6(){
        let dialogBox = DialogBox()
        dialogBox.addButton(title: "Yes", buttonAppearance: nil) {
            print("Pressed Yes")
        }
        dialogBox.addButton(title: "No", buttonAppearance: nil) {
            print("Pressed No")
        }
        dialogBox.show(title: "Thank you!", message: "You are a new member.", boxApp: BoxAppearanceNotification._6)
    }
    
    func showNotification_7(){
        DialogBox.show(title: "Thank you!", message: "You are now a new member.", boxApp: BoxAppearanceNotification._7)
    }
    
    func showNotification_8(){
        DialogBox.show(title: "Thank you!", message: "You are now a new member.", boxApp: BoxAppearanceNotification._8)
    }
    
    // MARK:- Loadings -
    func showLoadingAtIndex(index: Int){
        switch index {
        case 1:
            showLoading_1()
        case 2:
            showLoading_2()
        case 3:
            showLoading_3()
        case 4:
            showLoading_4()
        case 5:
            showLoading_5()
        case 6:
            showLoading_6()
        case 7:
            showLoading_7()
        case 8:
            showLoading_8()
        
        default: break
            
        }
    }

    func showLoading_1(){
        DialogBox.show(title: nil, message: nil, boxApp: BoxAppearanceLoading._1)
    }
    
    func showLoading_2(){
        DialogBox.show(title: nil, message: nil, boxApp: BoxAppearanceLoading._2)
    }
    
    func showLoading_3(){
        DialogBox.show(title: nil, message: nil, boxApp: BoxAppearanceLoading._3)
    }
    
    func showLoading_4(){
        DialogBox.show(title: nil, message: "Please wait", boxApp: BoxAppearanceLoading._4)
    }
    
    func showLoading_5(){
        DialogBox.show(title: "Please wait", message: nil, boxApp: BoxAppearanceLoading._5)
    }
    
    func showLoading_6(){
        DialogBox.show(title: nil, message: "Please wait", boxApp: BoxAppearanceLoading._6)
    }
    
    func showLoading_7(){
        DialogBox.show(title: "Please wait", message: "We are processing your request", boxApp: BoxAppearanceLoading._7)
    }
    
    func showLoading_8(){
        DialogBox.show(title: "Please wait...", message: "Processing your request", boxApp: BoxAppearanceLoading._8)
    }
    
    // MARK:- Screen Messages -
    
    func showScreenMessageAtIndex(index: Int){
        switch index {
        case 1:
            showScreenMessage_1()
        case 2:
            showScreenMessage_2()
        case 3:
            showScreenMessage_3()
        case 4:
            showScreenMessage_4()
        case 5:
            showScreenMessage_5()
            
        default: break
            
        }
    }
    
    func showScreenMessage_1(){
        DialogBox.show(title: nil, message: "Sorry we couldn't find any matches for search", boxApp: BoxAppearanceScreenMessages._1, superView: self.view)
    }
    
    func showScreenMessage_2(){
        DialogBox.show(title: nil, message: "Internet connection not found",superView: self.view , boxApp: BoxAppearanceScreenMessages._2, buttonTitle: "Try Again", buttonAppearance: nil) { 
            print("Pressed Try Again")
        }
    }
    
    func showScreenMessage_3(){
        DialogBox.show(title: "You have no podcast", message: "Subscribe to a podcast or download episodes to add them to Unplayed.",superView: self.view , boxApp: BoxAppearanceScreenMessages._3, buttonTitle: "Show Featured Podcast", buttonAppearance: nil) {
            print("Button Pressed")
        }
    }
    
    func showScreenMessage_4(){
        DialogBox.show(title: "Success", message: "Your profile has been created successfully.", boxApp: BoxAppearanceScreenMessages._4, buttonTitle: "Ok", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showScreenMessage_5(){
        DialogBox.show(title: "Welcome John!", message: "Your profile has been created successfully.", boxApp: BoxAppearanceScreenMessages._5, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    // MARK:- Animations -
    
    func setupAnimations(){
        arrAnimations = [
            Animation.fade,
            Animation.slideFromTop,
            Animation.slideFromBottom,
            Animation.bounce,
            Animation.none
        ]
    }
    
    func showAnimationAtIndex(index: Int){
        let str = arrAnimations[index]
        switch str {
        case Animation.fade:
            showAnimationFade()
        case Animation.bounce:
            showAnimationBounce()
        case Animation.slideFromTop:
            showAnimationSlideFromTop()
        case Animation.slideFromBottom:
            showAnimationSlideFromBottom()
        case Animation.none:
            showAnimationNone()
            
        default: break
            
        }
    }
    
    func showAnimationFade(){
        DialogBox.show(title: "Thank you", message: "You are a new member.", boxApp: BoxAppearanceAnimation.fade, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showAnimationBounce(){
        DialogBox.show(title: "Thank you", message: "You are a new member.", boxApp: BoxAppearanceAnimation.bounce, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showAnimationSlideFromTop(){
        DialogBox.show(title: "Thank you", message: "You are a new member.", boxApp: BoxAppearanceAnimation.slideFromTop, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showAnimationSlideFromBottom(){
        DialogBox.show(title: "Thank you", message: "You are a new member.", boxApp: BoxAppearanceAnimation.slideFromBottom, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showAnimationNone(){
        DialogBox.show(title: "Thank you", message: "You are a new member.", boxApp: BoxAppearanceAnimation.none)
    }
    
    // MARK:- Backgrounds -
    func setupBackgrounds(){
        arrBackground = [
            Background.darkBlur,
            Background.lightBlur,
            Background.extraLightBlur,
            Background.custom,
            Background.none
        ]
    }
    
    func showBackgroundAtIndex(index: Int){
        let str = arrBackground[index]
        switch str {
        case Background.darkBlur:
            showBackgroundDarkBlur()
        case Background.lightBlur:
            showBackgroundLightBlur()
        case Background.extraLightBlur:
            showBackgroundExtraBlur()
        case Background.custom:
            showBackgroundCustom()
        case Background.none:
            showBackgroundNone()
            
        default: break
            
        }
    }
    
    func showBackgroundDarkBlur(){
        DialogBox.show(title: "Thank you", message: "You are a new member.", boxApp: BoxAppearanceBackground.darkBlur, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showBackgroundLightBlur(){
        DialogBox.show(title: "Thank you", message: "You are a new member.", boxApp: BoxAppearanceBackground.lightBlur, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showBackgroundExtraBlur(){
        DialogBox.show(title: "Thank you", message: "You are a new member.", boxApp: BoxAppearanceBackground.extraLightBlur, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showBackgroundCustom(){
        DialogBox.show(title: "Thank you", message: "You are a new member.", boxApp: BoxAppearanceBackground.custom, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }
    
    func showBackgroundNone(){
        DialogBox.show(title: "Thank you", message: "You are a new member.", boxApp: BoxAppearanceBackground.none, buttonTitle: "Continue!", buttonAppearance: nil, actionBlock: nil)
    }

    //MARK:- CollectionView Data Sources & delegates -
    
    func numberOfSections(in collectionView: UICollectionView) -> Int{
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView{
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        
        let section = indexPath.section
        let lbl = header.viewWithTag(1) as! UILabel
        
        if(section == Section.Alert){
            lbl.text = "Alerts"
        }else if(section == Section.Notification){
            lbl.text = "Notifications"
        }else if(section == Section.Loading){
            lbl.text = "Loadings"
        }else if(section == Section.ScreenMessages){
            lbl.text = "Screen Messages"
        }else if(section == Section.Animation){
            lbl.text = "Animations"
        }else{
            lbl.text = "Backgrounds"
        }
        
        return header
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(section == Section.Alert){
            return alertsCount
        }else if(section == Section.Notification){
            return notificationsCount
        }else if(section == Section.Loading){
            return loadingsCount
        }else if(section == Section.ScreenMessages){
            return messagesCount
        }else if(section == Section.Animation){
            return arrAnimations.count
        }else if(section == Section.Background){
            return arrBackground.count
        }else{
            return 0;
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        let img = cell.viewWithTag(1) as! UIImageView
        let lblNo = cell.viewWithTag(2) as! UILabel
        let lblTitle = cell.viewWithTag(3) as! UILabel
        
        if(indexPath.section == Section.Animation || indexPath.section == Section.Background){
            lblTitle.isHidden = false
            img.isHidden = true
            
            if(indexPath.section == Section.Animation){
                lblTitle.text = arrAnimations[indexPath.row]
            }else{
                lblTitle.text = arrBackground[indexPath.row]
            }
        }else{
            lblTitle.isHidden = true
            img.isHidden = false
            
            if(indexPath.section == Section.Alert){
                img.image = UIImage.init(named: "alert#\(indexPath.row+1)")
            }else if(indexPath.section == Section.Notification){
                img.image = UIImage.init(named: "notification#\(indexPath.row+1)")
            }else if(indexPath.section == Section.Loading){
                img.image = UIImage.init(named: "loading#\(indexPath.row+1)")
            }else if(indexPath.section == Section.ScreenMessages){
                img.image = UIImage.init(named: "message#\(indexPath.row+1)")
            }
        }
        lblNo.text = " #\(indexPath.row+1)"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        if(indexPath.section == Section.Alert){
            showAlertAtIndex(index: indexPath.row + 1)
        }else if(indexPath.section == Section.Notification){
            showNotificationAtIndex(index: indexPath.row + 1)
        }else if(indexPath.section == Section.Loading){
            showLoadingAtIndex(index: indexPath.row + 1)
        }else if(indexPath.section == Section.ScreenMessages){
            showScreenMessageAtIndex(index: indexPath.row + 1)
        }else if(indexPath.section == Section.Animation){
            showAnimationAtIndex(index: indexPath.row)
        }else{
            showBackgroundAtIndex(index: indexPath.row)
        }
    }
    

    
}

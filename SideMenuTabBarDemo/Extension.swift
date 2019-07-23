//
//  Extension.swift
//  QuizApp
//
//  Created by Apple on 27/04/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import UIKit
import MMDrawerController
extension UIViewController{
    //MARK: Add  image over navigastion bar
    func addNavigationBarImage(){
        let img = UIImage(named: "Asset 4")
        navigationController?.navigationBar.setBackgroundImage(img, for: .default)
    }
    
    //MARK: LeftSideMenu Button...
    func LeftSideMenu() {
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.centerContainer.toggle(MMDrawerSide.left, animated: true, completion: nil)
    }
    //MARK: AttachSideMenuController...
    func AttachSideMenuController(){
        let mainstoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let leftViewController = mainstoryBoard.instantiateViewController(withIdentifier: "SlideMenuVC") as! SlideMenuVC
        let leftsidenav = UINavigationController(rootViewController: leftViewController)
        let appdeg:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appdeg.centerContainer.leftDrawerViewController = leftsidenav
    }
    //MARK: HideLeftSideMenu...
    func HideLeftSideMenu(){
        let appdeg:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appdeg.centerContainer.leftDrawerViewController = nil
    }
    
    //MARK: SideMenuSegue ...
    func performSeguefromSideMenu(identifier:String){
        let centerViewController = storyboard?.instantiateViewController(withIdentifier: identifier)
        let centnav = UINavigationController(rootViewController:centerViewController!)
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.centerContainer.centerViewController = centnav
        appDelegate.centerContainer.toggle(MMDrawerSide.left, animated: true, completion: nil)
    }
    
    
    //MARK:- ================Show Alertview function===============
    func showAlert(title:String,message:String,viewController:UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    //MARK:- ===========EndEditing Tap Gesture Function==========
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
     @objc func dismissKeyboard() {
        view.endEditing(true)
     }
    
    //MARK:- ============Navigate From one page to another ===========
    func pushSague(identifier : String){
        let push = self.storyboard?.instantiateViewController(withIdentifier: identifier)
        self.navigationController?.pushViewController(push!, animated: true)
    }
}

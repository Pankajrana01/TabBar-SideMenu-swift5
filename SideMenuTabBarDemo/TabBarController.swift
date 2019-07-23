//
//  TabBarController.swift
//  KitoPlastic
//
//  Created by apple on 06/05/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
class TabBarController: UIViewController,tabBarViewDelegate{
   
    func addTabBarView(tap: Int) {
        selectedIndex = tap
        buttons[selectedIndex].isSelected = true
        didTapOnBar(buttons[selectedIndex])
    }
    

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var FirstViewController1 = UIViewController()
    var SecondViewController = UIViewController()
    var ThirdViewController = UIViewController()
    var FourthViewController = UIViewController()
    
    var selectedIndex: Int = 0
    var viewControllers = [UIViewController]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        AttachSideMenuController()
        let obj = FirstViewController()
        obj.callDelegate = self
    
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        FirstViewController1 = storyboard.instantiateViewController(withIdentifier: "FirstViewController")
        SecondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        ThirdViewController = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
        FourthViewController = storyboard.instantiateViewController(withIdentifier: "FourthViewController")
        
        viewControllers = [FirstViewController1,SecondViewController,ThirdViewController,FourthViewController]

    
        //Set the Initial Tab when the App Starts.
        buttons[selectedIndex].isSelected = true
        didTapOnBar(buttons[selectedIndex])
    }
    
    @IBAction func menuAct(_ sender: UIBarButtonItem) {
        LeftSideMenu()
    }
    @IBAction func didTapOnBar(_ sender: UIButton) {
        //Get Access to the Previous and Current Tab Button.
        if sender.tag == 0{
//            mySpaceBtn.setImage(UIImage(named: "mySpaceyellow"), for: .normal)
//            mySpacelbl.textColor = YELLOW_COLOR
            
            
            
        } else if sender.tag == 1{
            
//            mySpaceBtn.setImage(UIImage(named: "mySpaceWhite"), for: .normal)
//            mySpacelbl.textColor = UIColor.white
            
            
            
        } else if sender.tag == 2{
           
        } else if sender.tag == 3{
          
        }
        
        
        
        selectedIndex = sender.tag
        let previousIndex = selectedIndex
        
        //Remove the Previous ViewController and Set Button State.
        buttons[previousIndex].isSelected = false
        
        let previousVC = viewControllers[previousIndex]
        previousVC.willMove(toParent: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParent()
        
        //Add the New ViewController and Set Button State.
        sender.isSelected = true
        let vc = viewControllers[selectedIndex]
        addChild(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
}


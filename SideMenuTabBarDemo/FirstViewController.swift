//
//  FirstViewController.swift
//  SideMenuTabBarDemo
//
//  Created by iMarkPC on 23/07/19.
//  Copyright © 2019 iMark. All rights reserved.
//

import UIKit
protocol tabBarViewDelegate: class {
    func addTabBarView(tap:Int)
}

class FirstViewController: UIViewController {
    
 weak var callDelegate : tabBarViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        AttachSideMenuController()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func menuAct(_ sender: UIBarButtonItem) {
        LeftSideMenu()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

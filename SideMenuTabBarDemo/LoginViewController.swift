//
//  LoginViewController.swift
//  SideMenuTabBarDemo
//
//  Created by iMarkPC on 23/07/19.
//  Copyright © 2019 iMark. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func loginBtn(_ sender: UIButton) {
        pushSague(identifier: "TabBarController")
    }
    
}

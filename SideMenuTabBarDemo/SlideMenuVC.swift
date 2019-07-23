//
//  SlideMenuVC.swift
//  QuizApp
//
//  Created by Apple on 13/03/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
class SlideMenuVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableview: UITableView!

    
    @IBOutlet weak var GogglePlusImg: UIImageView!
    let MenuData : [[String:Any]] = [["image" : #imageLiteral(resourceName: "home (2)"),"name" :"Home"],["image" : #imageLiteral(resourceName: "home (2)"),"name" :"How to play"],["image" : #imageLiteral(resourceName: "home (2)"),"name" :"About us"],["image" : #imageLiteral(resourceName: "home (2)"),"name" :"Suggest a question"],["image" : #imageLiteral(resourceName: "home (2)"),"name" :"Credit"],["image" : #imageLiteral(resourceName: "home (2)"),"name" :"Help/Contact us"],["image" : #imageLiteral(resourceName: "home (2)"),"name" :"Invite and earn"],["image" : #imageLiteral(resourceName: "home (2)"),"name" :"Rate us"],["image" : #imageLiteral(resourceName: "home (2)"),"name" :"Logout"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.separatorStyle = .none
        self.navigationController?.navigationBar.isHidden = true
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MenuTableView
        let ArrayMenuData = MenuData[indexPath.row]
        cell.imageView?.image = (ArrayMenuData["image"] as! UIImage)
        cell.textLabel?.text = (ArrayMenuData["name"] as! String)
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        cell.textLabel!.highlightedTextColor = UIColor.white
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch (indexPath.row) {
        case 0:
                performSeguefromSideMenu(identifier: "FirstViewController")
            break;
        case 1:
                performSeguefromSideMenu(identifier: "SecondViewController")
                 break;
        case 2 :
                  performSeguefromSideMenu(identifier: "ThirdViewController")
                  break;
        case 3 :
                  performSeguefromSideMenu(identifier: "FourthViewController")
                  break;
        case 4 :
                  performSeguefromSideMenu(identifier: "FourthViewController")
                  break;
        case 5 :
                  performSeguefromSideMenu(identifier: "FourthViewController")
                  break;
        case 6 :
                  performSeguefromSideMenu(identifier: "FourthViewController")
                  break;
        case 8 :
                let alert = UIAlertController(title: "Alert", message: "Are you sure you want to logout?", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Confirm", style: .default)  { (action:UIAlertAction) in
                    
                    
                 })
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                
                 self.present(alert, animated: true, completion: nil)
                break;
                default: break;
        
        }
        
    }
    
    func clearData(){
//        UserDefaults.standard.removeObject(forKey: "USERID")
//        UserDefaults.standard.removeObject(forKey: "APITOKEN")
    }

    @IBAction func ProfileButton(_ sender: UIButton) {
//        let profile = self.storyboard?.instantiateViewController(withIdentifier: "UserProfileVC") as! UserProfileVC
//        self.navigationController?.present(profile, animated: true, completion: nil)
        
    }
    
   
}
class MenuTableView: UITableViewCell {
    @IBOutlet weak var MenuLabel: UILabel!
    @IBOutlet weak var MenuImg: UIImage!
}

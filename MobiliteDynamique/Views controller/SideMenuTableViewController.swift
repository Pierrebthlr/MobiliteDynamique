//
//  SideMenuTableViewController.swift
//  MobiliteDynamique
//
//  Created by Pierre Bathellier on 12/12/2017.
//  Copyright © 2017 Pierre Bathellier. All rights reserved.
//
import Foundation
import SideMenu

class SideMenuTableViewController: UITableViewController {

    @IBOutlet weak var ProfileCell: UITableViewCell!
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var userImage: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        userName.text = UserDefaultsManager.name
        
        if(UserDefaultsManager.gender == "F")
        {
                userImage.image = UIImage(named: "avatar_f.png")
            
        }
        
        // refresh cell blur effect in case it changed
        tableView.reloadData()
        
        guard SideMenuManager.default.menuBlurEffectStyle == nil else {
            return
        }

    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = super.tableView(tableView, cellForRowAt: indexPath) as! UITableViewVibrantCell
        
        cell.blurEffectStyle = SideMenuManager.default.menuBlurEffectStyle
        
        return cell

    }
    */
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let destination = ProfileViewController() // Your destination
            navigationController?.pushViewController(destination, animated: true)
        }
        
    }
 
}

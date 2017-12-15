//
//  TravelTableViewController.swift
//  MobiliteDynamique
//
//  Created by Pierre Bathellier on 15/12/2017.
//  Copyright © 2017 Pierre Bathellier. All rights reserved.
//

import UIKit
import CoreData


class TravelTableViewController: UITableViewController {

    private var travels : [Travel] = []
    @IBOutlet var TravelTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        travels = getTravels()

        
        TravelTableView.allowsSelection = false
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travels.count
    }
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelCell", for: indexPath)
        let travel = travels[indexPath.row]
        cell.textLabel?.text = String(describing: travel.timestamp)
    
        switch (travel.mode){
        case 0 : cell.detailTextLabel?.text = "I'm start waiting"
                 cell.imageView?.image =  UIImage(named:"icons8-standing-man-filled-50.png")
        case 1 : cell.detailTextLabel?.text = "Start taking public transport"
                 cell.imageView?.image =  UIImage(named:"icons8-bus-50.png")
        case 2 : cell.detailTextLabel?.text = "Start using my bike"
                 cell.imageView?.image =  UIImage(named:"icons8-cycling-50.png")
        case 3 : cell.detailTextLabel?.text = "Start using my car"
                 cell.imageView?.image =  UIImage(named:"icons8-car-filled-50.png")
        case 4 : cell.detailTextLabel?.text = "Start walking"
                 cell.imageView?.image =  UIImage(named:"icons8-walking-50.png")
        case 5 : cell.detailTextLabel?.text = ""
        default : cell.detailTextLabel?.text = ""
        }
 
        return cell
    }
    
    private func getTravels() -> [Travel] {
        let fetchRequest: NSFetchRequest<Travel> = Travel.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: #keyPath(Travel.timestamp), ascending: false)
        fetchRequest.sortDescriptors = [sortDescriptor]
        do {
            return try CoreDataStack.context.fetch(fetchRequest)
        } catch {
            return []
        }
    }
    
    /*

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    */

}

//
//  BusLinesViewController.swift
//  MobiliteDynamique
//
//  Created by Pierre Bathellier on 18/10/2017.
//  Copyright © 2017 Pierre Bathellier. All rights reserved.
//

import UIKit


import UIKit


class BusLinesViewController: UITableViewController {
    
    // MARK: - Properties
    public var busLines = SampleData.generatePlayersData()
}

// MARK: - UITableViewDataSource
extension BusLinesViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return busLines.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BusLineCell", for: indexPath)
        
        let busline = busLines[indexPath.row]
        cell.textLabel?.text = busline.number
        //
        cell.detailTextLabel?.text = busline.departure+busline.arrival
        return cell
    }
}




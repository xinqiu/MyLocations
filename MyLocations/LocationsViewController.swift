//
//  LocationsViewController.swift
//  MyLocations
//
//  Created by Xin Qiu on 16/10/9.
//  Copyright © 2016年 Xin Qiu. All rights reserved.
//

import UIKit
import CoreData
import CoreLocation

class LocationsViewController: UITableViewController {
    var managedObjectContext: NSManagedObjectContext!
    var locations = [Location]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fetchRequest = NSFetchRequest()
        
        let entity = NSEntityDescription.entityForName("Location", inManagedObjectContext: managedObjectContext)
        
        fetchRequest.entity = entity
        
        let sortDescriptor = NSSortDescriptor(key: "date", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        do {
            let foundObjects = try managedObjectContext.executeRequest(fetchRequest)
            
            locations = foundObjects as! [Location]
        } catch {
            fatalCoreDataError(error)
        }
        
    }
    
    override func tableView(table: UITableView,numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LocationCell", forIndexPath: indexPath)
        
        let descriptionLabel = cell.viewWithTag(100) as! UILabel
        descriptionLabel.text = "If you can see this"
        
        let addressLabel = cell.viewWithTag(101) as! UILabel
        addressLabel.text = "Then it works!"
        
        return cell
    }
    
}

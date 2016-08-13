//
//  LocationDetailsViewController.swift
//  MyLocations
//
//  Created by Xin Qiu on 16/8/13.
//  Copyright © 2016年 Xin Qiu. All rights reserved.
//

import UIKit

class LocationDetailsViewController: UITableViewController {
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBAction func done() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
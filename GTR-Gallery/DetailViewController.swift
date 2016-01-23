//
//  DetailViewController.swift
//  GTR-Gallery
//
//  Created by Samuel Shaw on 1/23/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    @IBOutlet weak var detailView: UIImageView!
    
    var name: AnyObject? {
        get {
            return NSUserDefaults.standardUserDefaults().objectForKey("name")
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()

        detailView.image = UIImage(named: name as! String)
    }

}

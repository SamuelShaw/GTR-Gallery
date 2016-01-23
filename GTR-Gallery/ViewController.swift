//
//  ViewController.swift
//  GTR-Gallery
//
//  Created by Samuel Shaw on 1/23/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
{
    var GTRs:[String] = []
    var name: AnyObject? {
        get {
            return NSUserDefaults.standardUserDefaults().objectForKey("name")
        }
        set {
            NSUserDefaults.standardUserDefaults().setObject(newValue!, forKey: "name")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        GTRs = ["gtr1.jpg","gt2.jpg","gtr3.jpg","gtr4.jpg","gtr5.jpg","gtr6.jpg","gtr7.jpg","gtr8.jpg","gtr9.jpg","gtr10.jpg","gtr11.jpg","gtr12.jpg","gtr13.jpg","gtr14.jpg","gtr15.jpg","gtr16.jpg","gtr17.jpg","gtr18.jpg","gtr19.jpg","gtr20.jpg","gtr1.jpg","gt2.jpg","gtr3.jpg","gtr4.jpg","gtr5.jpg","gtr6.jpg","gtr7.jpg","gtr8.jpg","gtr9.jpg","gtr10.jpg","gtr11.jpg","gtr12.jpg","gtr13.jpg","gtr14.jpg","gtr15.jpg","gtr16.jpg","gtr17.jpg","gtr18.jpg","gtr19.jpg","gtr20.jpg","gtr1.jpg","gt2.jpg","gtr3.jpg","gtr4.jpg","gtr5.jpg","gtr6.jpg","gtr7.jpg","gtr8.jpg","gtr9.jpg","gtr10.jpg","gtr11.jpg","gtr12.jpg","gtr13.jpg","gtr14.jpg","gtr15.jpg","gtr16.jpg","gtr17.jpg","gtr18.jpg","gtr19.jpg","gtr20.jpg","gtr1.jpg","gt2.jpg","gtr3.jpg","gtr4.jpg","gtr5.jpg","gtr6.jpg","gtr7.jpg","gtr8.jpg","gtr9.jpg","gtr10.jpg","gtr11.jpg","gtr12.jpg","gtr13.jpg","gtr14.jpg","gtr15.jpg","gtr16.jpg","gtr17.jpg","gtr18.jpg","gtr19.jpg","gtr20.jpg"]
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return GTRs.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.imageView.image = UIImage(named: GTRs[indexPath.row])
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        name = GTRs [indexPath.row]
    }


}


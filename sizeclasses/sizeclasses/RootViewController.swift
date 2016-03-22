//
//  RootViewController.swift
//  Ridin'
//
//  Created by Fhict on 05/03/16.
//  Copyright © 2016 PowerCircleDesigns. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    var willTransitionToPortrait: Bool!
    var traitCollection_CompactRegular: UITraitCollection!
    var traitCollection_AnyAny: UITraitCollection!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupReferenceSizeClasses()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        willTransitionToPortrait = self.view.frame.size.height > self.view.frame.size.width
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        willTransitionToPortrait = size.height > size.width
    }

    func setupReferenceSizeClasses(){
        let traitCollection_hCompact = UITraitCollection(horizontalSizeClass: .Compact)
        let traitCollection_vRegular = UITraitCollection(verticalSizeClass: .Regular)
        traitCollection_CompactRegular = UITraitCollection(traitsFromCollections: [traitCollection_hCompact, traitCollection_vRegular])
        
        let traitCollection_hAny = UITraitCollection(horizontalSizeClass: .Unspecified)
        let traitCollection_vAny = UITraitCollection(verticalSizeClass: .Unspecified)
        traitCollection_AnyAny = UITraitCollection(traitsFromCollections: [traitCollection_hAny, traitCollection_vAny])
    }
    
    override func overrideTraitCollectionForChildViewController(childViewController: UIViewController) -> UITraitCollection? {
        let traitCollectionForOverride = ((willTransitionToPortrait) != nil) ? traitCollection_CompactRegular : traitCollection_AnyAny
        
        return traitCollectionForOverride;
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

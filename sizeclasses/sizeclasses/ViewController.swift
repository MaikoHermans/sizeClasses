//
//  ViewController.swift
//  sizeclasses
//
//  Created by Fhict on 22/03/16.
//  Copyright © 2016 PowerCircleDesigns. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var theMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let latitude: CLLocationDegrees = 48.399193
        let longitude: CLLocationDegrees = 9.993341
        
        let latDelta: CLLocationDegrees = 0.01
        let longDelta: CLLocationDegrees = 0.01
        
        
        let theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        let churchLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let theRegion: MKCoordinateRegion = MKCoordinateRegionMake(churchLocation, theSpan)
        
        self.theMap.setRegion(theRegion, animated: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


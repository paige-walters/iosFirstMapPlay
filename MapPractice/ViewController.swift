//
//  ViewController.swift
//  MapPractice
//
//  Created by Paige Walters on 5/26/16.
//  Copyright © 2016 Paige Walters. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var Map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let location = CLLocationCoordinate2DMake(46.5205, 94.2886)
        
        let span = MKCoordinateSpanMake(0.4, 0.4)
        let region = MKCoordinateRegion(center: location, span: span)
        
        Map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "Nisswa"
        annotation.subtitle = "The Cabin"
        
        Map.addAnnotation(annotation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


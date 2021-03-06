//
//  MapViewController.swift
//  FOSSAsia
//
//  Created by SIMRANPREET KAUR on 06/06/18.
//  Copyright © 2018 FossAsia. All rights reserved.
//

import Foundation
import MapKit
import CoreLocation

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let locationCoordinates = CLLocationCoordinate2DMake(Constants.Location.lattitude, Constants.Location.longitude)
        let span = MKCoordinateSpanMake(Constants.Location.spanCoordinate, Constants.Location.spanCoordinate)
        let region = MKCoordinateRegionMake(locationCoordinates, span)
        mapView.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = locationCoordinates
        annotation.title = Constants.Location.annotationTitle
        mapView.addAnnotation(annotation)
    }

}

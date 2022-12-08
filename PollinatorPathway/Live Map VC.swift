//
//  Live Map VC.swift
//  PollinatorPathway
//
//  Created by Student Account on 4/26/22.
//

import UIKit
import MapKit

class Live_Map_VC: UIViewController {

    @IBOutlet private var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocation = CLLocation(latitude: 47.7590, longitude: -122.1907)
        mapView.centerToLocation(initialLocation)
        
        //Sample Locations
        
        // Cascadia Garden
        
        let cascadia = MKPointAnnotation()
        cascadia.title = "Cascadia College"
        cascadia.coordinate = CLLocationCoordinate2D(latitude: 47.7590, longitude: -122.1907)
        mapView.addAnnotation(cascadia)
        
        let testChurch = MKPointAnnotation()
        testChurch.title = "Test Church 1"
        testChurch.coordinate = CLLocationCoordinate2D(latitude: 47.7540, longitude: -122.2107)
        mapView.addAnnotation(testChurch)
        
        let testBusiness = MKPointAnnotation()
        testBusiness.title = "Local Business"
        testBusiness.coordinate = CLLocationCoordinate2D(latitude: 47.77, longitude: -122.2200)
        mapView.addAnnotation(testBusiness)
        
        let testCommCtr = MKPointAnnotation()
        testCommCtr.title = "Local Community Center"
        testCommCtr.coordinate = CLLocationCoordinate2D(latitude: 47.74, longitude: -122.1810)
        mapView.addAnnotation(testCommCtr)
    }
}
    private extension MKMapView {
      func centerToLocation(
        _ location: CLLocation,
        regionRadius: CLLocationDistance = 6000
      ) {
        let coordinateRegion = MKCoordinateRegion(
          center: location.coordinate,
          latitudinalMeters: regionRadius,
          longitudinalMeters: regionRadius)
        setRegion(coordinateRegion, animated: true)
      }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

    */



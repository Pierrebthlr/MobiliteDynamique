//
//  BusMapViewController.swift
//  MobiliteDynamique
//
//  Created by Pierre Bathellier on 10/10/2017.
//  Copyright © 2017 Pierre Bathellier. All rights reserved.
//

import Foundation
import UIKit
import MapKit


class BusMapViewController: UIViewController {

    var lineNumber:Int?
    public let locationManager = LocationManager.shared    
    
    @IBOutlet var busMap: MKMapView!
    override func viewDidLoad() {
        //let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        guard let initialLocation = locationManager.location
            else {
                let alert = UIAlertController(title: "Alert", message: "You have to start location", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                return
                
        }
        
            self.centerMapOnLocation(location: initialLocation)
            let pCSV = CSVparser()
            let fCSV = pCSV.readDataFromCSV(fileName: "busstop",fileType: "csv")
            print(fCSV)

            // show artwork on map
            let artwork = Artwork(title: "King David Kalakaua",
                                  locationName: "Waikiki Gateway Park",
                                  discipline: "Sculpture",
                                  coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661))
        
            busMap.addAnnotation(artwork)
            busMap.delegate = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    let regionRadius: CLLocationDistance = 1000
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        busMap.setRegion(coordinateRegion, animated: true)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}

extension BusMapViewController: MKMapViewDelegate {
    
    // 1
    func mapView(_ mapView: MKMapView!, viewFor annotation: MKAnnotation!) -> MKAnnotationView! {
        if let annotation = annotation as? Artwork {
            let identifier = "pin"
            var view: MKPinAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
                as? MKPinAnnotationView { // 2
                dequeuedView.annotation = annotation
                view = dequeuedView
            } else {
                // 3
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
                view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure) as UIView
            }
            return view
        }
        return nil
    }
    
}
    

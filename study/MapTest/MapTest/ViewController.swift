//
//  ViewController.swift
//  MapTest
//
//  Created by 샤인 on 2017. 6. 30..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate,CLLocationManagerDelegate {

    let manager = CLLocationManager()
    var a:CLLocationCoordinate2D?
    
    @IBOutlet weak var mapViewTest: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapViewTest.delegate = self
        let regionRadius: CLLocationDistance = 100
        let location = CLLocation(latitude: 37.517517, longitude: 127.018159)
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        
        mapViewTest.setRegion(coordinateRegion, animated: true)
        
        
        let newCoordinate = CLLocationCoordinate2DMake(37.517517, 127.018159)
        let newTitle = "패스트 캠퍼스"
        let pin1 = MyAnnotation(coordinate: newCoordinate, title: newTitle)
        
        
        mapViewTest.addAnnotation(pin1)
        
        manager.delegate = self
        manager.requestAlwaysAuthorization()
        manager.requestWhenInUseAuthorization()
        manager.desiredAccuracy = kCLLocationAccuracyBest //현재 위치를  받아와라 빈도수를 최고로
        manager.startUpdatingLocation()
        
        mapViewTest.showsUserLocation = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let nowLocation = locations.last{
           
           a = nowLocation.coordinate
            
        }
    }
    @IBAction func locationBtn(_ sender: UIButton) {
       

    }

//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        
//    }

}


//
//  MyAnnotation.swift
//  MapTest
//
//  Created by 샤인 on 2017. 6. 30..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit
import MapKit


class MyAnnotation: NSObject,MKAnnotation { //어노테이션즈는 핀이 여러개 찍힌다
    
    var coordinate: CLLocationCoordinate2D
    var title:String?
    var subtitle: String?
    
    init(coordinate:CLLocationCoordinate2D,title:String) {
        self.title = title
        self.coordinate = coordinate
    }
    
}

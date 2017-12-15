//
//  Event.swift
//  MobiliteDynamique
//
//  Created by Pierre Bathellier on 14/12/2017.
//  Copyright © 2017 Pierre Bathellier. All rights reserved.
//

import Foundation
import CoreLocation

enum status {
    case waiting
    case publicTransport
    case bike
    case car
    case walking
    case stop
}


struct Event
{
    // MARK: - Properties
    var position: CLLocation
    var timestamp: Date
    var status : status
    
    // ...
    init(position: CLLocation, timestamp: Date, mode: status) {
        self.position = position
        self.timestamp = timestamp
        self.status = mode
    }
    // ...
    
}

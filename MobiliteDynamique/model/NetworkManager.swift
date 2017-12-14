//
//  NetworkManager.swift
//  MobiliteDynamique
//
//  Created by Pierre Bathellier on 12/12/2017.
//  Copyright © 2017 Pierre Bathellier. All rights reserved.
//

import Foundation


class NetworkManager {
    
    private static var sharedNetworkManager: NetworkManager = {
        let networkManager = NetworkManager(baseURL: URL(string: "https://my-moby.com")!, defaultConnPort: 443)
        
        // Configuration
        
        
        return networkManager
    }()

    
    // MARK: - Properties
    
    let baseURL: URL
    let defaultConnPort : Int
    
    // Initialization
    
    init(baseURL: URL, defaultConnPort : Int) {
        self.baseURL = baseURL
        self.defaultConnPort = defaultConnPort
    }
    
    
    class func shared() -> NetworkManager {
        return sharedNetworkManager
    }
    
}

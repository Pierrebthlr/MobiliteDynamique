//
//  User.swift
//  MobiliteDynamique
//
//  Created by Pierre Bathellier on 12/12/2017.
//  Copyright © 2017 Pierre Bathellier. All rights reserved.
//

import Foundation

//let sharedUser =  UserDefaults.standard

class UserDefaultsManager {
    
    private static let nameKey = "nameKey"
    private static let isInitialiazedKey = "isInitialiazedKey"
    private static let genderKey = "genderKey"


    
    static var isInitialiazed : Bool {
        get {
            return UserDefaults.standard.bool(forKey: isInitialiazedKey)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: isInitialiazedKey)
        }
        
    }
    
    static var name : String {
        get {
            return UserDefaults.standard.string(forKey:  nameKey)!
        }
        set {
            UserDefaults.standard.set(newValue, forKey: nameKey)
        }
        
    }
    
    static var gender : String {
        get {
            return UserDefaults.standard.string(forKey:  genderKey)!
        }
        set {
            UserDefaults.standard.set(newValue, forKey: genderKey)
        }
        
    }
    
    
}

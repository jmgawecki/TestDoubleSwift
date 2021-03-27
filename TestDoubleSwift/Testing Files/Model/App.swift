//
//  App.swift
//  TestDoubleSwift
//
//  Created by Jakub Gawecki on 27/03/2021.
//

import Foundation

protocol AppProtocol {
    var price:          Decimal { get set }
    var minimumAge:     Int { get set }
    var isReleased:     Bool { get set }
    
    func canBePurchased(by user: UserProtocol) -> Bool
}


struct App: AppProtocol {
    var price:      Decimal
    var minimumAge: Int
    var isReleased: Bool
    
    
    func canBePurchased(by user: UserProtocol) -> Bool {
        guard isReleased else {
            return false
        }
        
        guard user.funds >= price else {
            return false
        }
        
        if user.age >= minimumAge {
            return true
        } else {
            return false
        }
    }
}


struct UnreleasedAppStub: AppProtocol {
    var price:          Decimal = 0
    var minimumAge:     Int = 0
    var isReleased:     Bool = false
    
    func canBePurchased(by user: UserProtocol) -> Bool {
        return false
    }
}

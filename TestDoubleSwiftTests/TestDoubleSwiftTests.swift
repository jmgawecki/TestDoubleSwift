//
//  TestDoubleSwiftTests.swift
//  TestDoubleSwiftTests
//
//  Created by Jakub Gawecki on 27/03/2021.
//

import XCTest
@testable import TestDoubleSwift

class TestDoubleSwiftTests: XCTestCase {

    func testUserCantBuyUnreleasedApp() {
        // Arrange
        var sut = User(funds: 100, age: 21, apps: [])
        let app = UnreleasedAppStub()
        
        
        // Act
        let wasBought = sut.buy(app)
        
        
        // Assert
        XCTAssertFalse(wasBought)
    }
}

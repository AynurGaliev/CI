//
//  CITests.swift
//  CITests
//
//  Created by Aynur Galiev on 06.03.17.
//  Copyright © 2017 Aynur Galiev. All rights reserved.
//

import XCTest
@testable import CI

class CITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHello() {
        let vc = ViewController()
        XCTAssertTrue(vc.hello == "Hello")
    }
}

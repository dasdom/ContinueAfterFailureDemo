//
//  ContinueAfterFailureDemoTests.swift
//  ContinueAfterFailureDemoTests
//
//  Created by Dominik Hauser on 03/08/15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import XCTest
@testable import ContinueAfterFailureDemo

class ContinueAfterFailureDemoTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        self.continueAfterFailure = false
        
        viewController = ViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testViewController_HasAddButtonInNavigationBar() {
        let _ = viewController.view
        
        XCTAssertNotNil(viewController.navigationController)
        XCTAssertNotNil(viewController.navigationItem.rightBarButtonItem)
        let addBarButton = viewController.navigationItem.rightBarButtonItem!
        let target = addBarButton.target
        XCTAssertEqual(target as! ViewController, viewController, "The view controller should be the target of the right bar button")
    }
    
    func testSomethingElse() {
        XCTAssert(true)
    }
}

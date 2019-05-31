//
//  DashedViewTests.swift
//  DashedViewTests
//
//  Created by Maciej Gad on 31 May 2019.
//  Copyright © 2019 Maciej Gad. All rights reserved.
//

@testable import DashedView
import XCTest
import FBSnapshotTestCase

class DashedViewTests: FBSnapshotTestCase {
    
    static var allTests = [
        ("testDashView", testDashView),
        ("testCustomDashView", testCustomDashView)
    ]
    
    override func setUp() {
        super.setUp()
//        recordMode = true
//        continueAfterFailure = true
    }
    
    func testDashView() {
        let size = CGSize(width: 100, height: 50)
        let frame = CGRect(origin: .zero, size:size)
        let sut = DashedView(frame: frame)
        FBSnapshotVerifyView(sut)
    }
    
    func testCustomDashView() {
        let size = CGSize(width: 200, height: 200)
        let frame = CGRect(origin: .zero, size:size)
        let sut = DashedView(frame: frame)
        sut.dashColor = .red
        sut.cornerRadius = 6
        FBSnapshotVerifyView(sut)
    }
    
}

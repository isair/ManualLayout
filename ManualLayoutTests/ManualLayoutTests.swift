//
//  ManualLayoutTests.swift
//  ManualLayoutTests
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit
import XCTest
import ManualLayout

internal class ManualLayoutTests: XCTestCase {
  let otherRect = CGRect(x: 10, y: 20, width: 100, height: 100)
  let rect = CGRect(x: 0, y: 0, width: 10, height: 10)

  func testGetOriginForCenteringRect() {
    let o = ManualLayout.getOriginForCenteringRect(rect, inRect: otherRect)
    XCTAssertEqual(o, CGPoint(x: 55, y: 65), "o should equal center point")
  }

  func testGetPositionForCenteringRect() {
    let x = ManualLayout.getPositionForCenteringRect(rect, dimension: .X, inRect: otherRect)
    XCTAssert(x == 55, "x should be in center")
    let y = ManualLayout.getPositionForCenteringRect(rect, dimension: .Y, inRect: otherRect)
    XCTAssert(y == 65, "y should be in center")
  }
}

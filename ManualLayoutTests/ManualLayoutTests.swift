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
  let otherRect = CGRect (x: 10, y: 20, width: 100, height: 100)
  let rect = CGRect(x: 0, y: 0, width: 10, height: 10)

  func testGetOriginForCenteringRect() {
    let origin = ManualLayout.getOriginForCenteringRect(rect, inRect: otherRect)
    XCTAssertEqual(origin, CGPoint(x: 55, y: 65), "origin should be at (55, 65)")
  }

  func testGetPositionForCenteringRect() {
    let positionX = ManualLayout.getPositionForCenteringRect(rect, dimension: .X, inRect: otherRect)
    XCTAssert(positionX == 55, "x position should be 55")
    let positionY = ManualLayout.getPositionForCenteringRect(rect, dimension: .Y, inRect: otherRect)
    XCTAssert(positionY == 65, "y position should be 65")
  }
}

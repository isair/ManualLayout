//
//  OperatorTests.swift
//  ManualLayout
//
//  Created by Baris Sencan on 26/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation
import XCTest
import ManualLayout

class OperatorTests: XCTestCase {
  var view = UIView(frame: CGRectZero)

  override func setUp() {
    view.frame = CGRectZero
  }

  func testPointAssignment() {
    view.origin =~ (1, 3)
    XCTAssertEqual(view.origin, CGPoint(x: 1, y: 3), "origin should be at (1, 3)")
  }

  func testSizeAssignment() {
    view.size =~ (5, 7)
    XCTAssertEqual(view.size, CGSize(width: 5, height: 7), "size should be (5, 7)")
  }
}
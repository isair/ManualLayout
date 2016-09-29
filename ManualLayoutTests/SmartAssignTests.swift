//
//  SmartAssignTests.swift
//  ManualLayout
//
//  Created by Baris Sencan on 26/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation
import XCTest
import ManualLayout

class SmartAssignTests: XCTestCase {
  var view = UIView(frame: .zero)

  override func setUp() {
    view.frame = .zero
  }

  func testPointAssignment() {
    view.origin =~ (1, 3)
    XCTAssertEqual(view.origin, CGPoint(x: 1, y: 3), "origin should be at (1, 3)")
  }

  func testSizeAssignment() {
    view.size =~ (5, 7)
    XCTAssertEqual(view.size, CGSize(width: 5, height: 7), "size should be (5, 7)")
  }

  func testRectAssignment() {
    view.frame =~ (1, 3, 5, 7)
    XCTAssertEqual(
      view.frame,
      CGRect(x: 1, y: 3, width: 5, height: 7),
      "frame should be at (1, 3) and of size (5, 7)")
  }
}
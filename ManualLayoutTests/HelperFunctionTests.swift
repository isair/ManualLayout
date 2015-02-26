//
//  HelperFunctionTests.swift
//  ManualLayout
//
//  Created by Baris Sencan on 26/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation
import XCTest
import ManualLayout

class HelperFunctionTests: XCTestCase {
  var view = UIView(frame: CGRectZero)
  let defaultFrame = CGRect(x: 1, y: 3, width: 6, height: 8)

  override func setUp() {
    view.frame = defaultFrame
  }

  func testInsetSingleArg() {
    view.frame = inset(view, 1)
    XCTAssertEqual(
      view.frame,
      CGRect(x: 2, y: 4, width: 4, height: 6),
      "insetting with amount should inset correctly")
  }

  func testInsetTwoArg() {
    view.frame = inset(view, 1, 2)
    XCTAssertEqual(
      view.frame,
      CGRect(x: 2, y: 5, width: 4, height: 4),
      "insetting with dx and dy should inset correctly")
  }

  func testInsetFourArg() {
    view.frame = inset(view, 1, 2, 3, 4)
    XCTAssertEqual(
      view.frame,
      CGRect(x: 3, y: 4, width: 0, height: 4),
      "insetting with four arguments should inset correctly")
  }

  func testOffsetSingleArg() {
    view.frame = offset(view, 1)
    XCTAssertEqual(
      view.frame,
      CGRect(x: 2, y: 4, width: 6, height: 8),
      "offsetting with amount should offset correctly")
  }

  func testOffsetTwoArg() {
    view.frame = offset(view, 1, 2)
    XCTAssertEqual(
      view.frame,
      CGRect(x: 2, y: 5, width: 6, height: 8),
      "offsetting with dx and dy should offset correctly")
  }
}
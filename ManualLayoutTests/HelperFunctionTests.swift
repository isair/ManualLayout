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
  var view = UIView(frame: .zero)
  let defaultFrame = CGRect(x: 1, y: 3, width: 6, height: 8)

  override func setUp() {
    view.frame = defaultFrame
  }

  func testInsetRectSingleArg() {
    view.frame = inset(view, amount: 1)
    XCTAssertEqual(
      view.frame,
      CGRect(x: 2, y: 4, width: 4, height: 6),
      "insetting with amount should inset correctly")
  }

  func testInsetRectTwoArg() {
    view.frame = inset(view, dx: 1, dy: 2)
    XCTAssertEqual(
      view.frame,
      CGRect(x: 2, y: 5, width: 4, height: 4),
      "insetting with dx and dy should inset correctly")
  }

  func testInsetRectFourArg() {
    view.frame = inset(view, top: 1, left: 2, bottom: 3, right: 4)
    XCTAssertEqual(
      view.frame,
      CGRect(x: 3, y: 4, width: 0, height: 4),
      "insetting with four arguments should inset correctly")
  }

  func testInsetSizeSingleArg() {
    let size = inset(view.frame.size, amount: 1)
    XCTAssertEqual(
      size,
      CGSize(width: 4, height: 6),
      "insetting size with amount should inset correctly")
  }

  func testInsetSizeTwoArg() {
    let size = inset(view.frame.size, dx: 1, dy: 2)
    XCTAssertEqual(
      size,
      CGSize(width: 4, height: 4),
      "insetting size with two arguments should inset correctly")
  }

  func testInsetSizeFourArg() {
    let size = inset(view.frame.size, top: 1, left: 2, bottom: 3, right: 4)
    XCTAssertEqual(
      size,
      CGSize(width: 0, height: 4),
      "insetting size with four arguments should inset correctly")
  }

  func testOffsetSingleArg() {
    view.frame = offset(view, amount: 1)
    XCTAssertEqual(
      view.frame,
      CGRect(x: 2, y: 4, width: 6, height: 8),
      "offsetting with amount should offset correctly")
  }

  func testOffsetTwoArg() {
    view.frame = offset(view, dx: 1, dy: 2)
    XCTAssertEqual(
      view.frame,
      CGRect(x: 2, y: 5, width: 6, height: 8),
      "offsetting with dx and dy should offset correctly")
  }

  func testOffsetPointSingleArg() {
    let origin = offset(view.frame.origin, amount: 1)
    XCTAssertEqual(
      origin,
      CGPoint(x: 2, y: 4),
      "offsetting origin with amount should offset correctly")
  }

  func testOffsetPointTwoArg() {
    let origin = offset(view.frame.origin, dx: 1, dy: 2)
    XCTAssertEqual(
      origin,
      CGPoint(x: 2, y: 5),
      "offsetting origin with dx and dy should offset correctly")
  }
}
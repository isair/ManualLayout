//
//  FastAccessTests.swift
//  ManualLayout
//
//  Created by Baris Sencan on 24/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit
import XCTest
import ManualLayout

class FastAccessTests: XCTestCase {
  let view = UIView(frame: CGRectZero)

  override func setUp() {
    view.frame = CGRectZero
  }

  func testOrigin() {
    let origin = CGPoint(x: 10, y: 10)
    view.origin = origin
    XCTAssertEqual(view.frame.origin, origin, "origin changes should modify frame origin")
    XCTAssertEqual(view.frame.size, CGSizeZero, "origin changes should not modify frame size")
  }

  func testX() {
    view.x = 10
    XCTAssertEqual(view.frame.origin, CGPoint(x: 10, y: 0), "x changes should just modify frame x")
    XCTAssertEqual(view.frame.size, CGSizeZero, "x changes should not modify frame size")
  }

  func testY() {
    view.y = 10
    XCTAssertEqual(view.frame.origin, CGPoint(x: 0, y: 10), "y changes should just modify frame y")
    XCTAssertEqual(view.frame.size, CGSizeZero, "y changes should not modify frame size")
  }

  func testCenter() {

  }

  func testCenterX() {

  }

  func testCenterY() {
    
  }

  func testSize() {

  }

  func testWidth() {

  }

  func testHeight() {
    
  }

  func testTop() {
    view.top = 10
    XCTAssertEqual(view.frame.origin, CGPoint(x: 0, y: 10), "top changes should just modify frame y")
    XCTAssertEqual(view.frame.size, CGSizeZero, "top changes should not modify frame size")
  }

  func testRight() {

  }

  func testBottom() {

  }

  func testLeft() {

  }

  func testTop2() {

  }

  func testRight2() {

  }

  func testBottom2() {

  }

  func testLeft2() {
    
  }
}
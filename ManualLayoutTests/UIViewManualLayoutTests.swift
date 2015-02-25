//
//  UIViewManualLayoutTests.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit
import XCTest
import ManualLayout

class UIViewManualLayoutTests: XCTestCase {
  let containerView = UIView(frame: CGRectZero)
  let view = UIView(frame: CGRectZero)

  override func setUp() {
    containerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    containerView.addSubview(view)
    view.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
  }

  override func tearDown() {
    view.removeFromSuperview()
  }

  func testCenterInSuperview() {
    view.centerInSuperview()
    XCTAssertEqual(view.center, containerView.center, "centers must be equal")
  }

  func testCenterDimensionInSuperview() {
    view.centerDimensionInSuperview(.X)
    XCTAssertEqual(view.center.x, containerView.center.x, "centers must be aligned on x axis")
    view.centerDimensionInSuperview(.Y)
    XCTAssertEqual(view.center.y, containerView.center.y, "centers must be aligned on y axis")
  }
}

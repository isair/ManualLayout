//
//  UIViewManualLayoutTests.swift
//  ManualLayout
//
//  Created by Baris Sencan on 24/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit
import XCTest
import ManualLayout

class UIViewManualLayoutTests: XCTestCase {
  let view = UIView(frame: .zero)
  let defaultFrame = CGRect(x: 1, y: 3, width: 6, height: 8)

  override func setUp() {
    view.frame = defaultFrame
  }

  func testOrigin() {
    let newOrigin = CGPoint(x: 10, y: 10)
    view.origin = newOrigin
    XCTAssertEqual(
      view.frame.origin,
      newOrigin,
      "origin changes should modify frame origin")
    XCTAssertEqual(
      view.frame.size,
      defaultFrame.size,
      "origin changes should not modify frame size")
  }

  func testX() {
    view.x = 10
    XCTAssertEqual(
      view.frame.origin,
      CGPoint(x: 10, y: defaultFrame.origin.y),
      "x changes should just modify frame x")
    XCTAssertEqual(
      view.frame.size,
      defaultFrame.size,
      "x changes should not modify frame size")
  }

  func testY() {
    view.y = 10
    XCTAssertEqual(
      view.frame.origin,
      CGPoint(x: defaultFrame.origin.x, y: 10),
      "y changes should just modify frame y")
    XCTAssertEqual(
      view.frame.size,
      defaultFrame.size,
      "y changes should not modify frame size")
  }

  func testCenter() {
    view.layer.center = CGPoint(x: 10, y: 10)
    XCTAssertEqual(
      view.frame.origin,
      CGPoint(x: 7, y: 6),
      "center changes should center frame")
    XCTAssertEqual(
      view.frame.size,
      defaultFrame.size,
      "center changes should not modify frame size")
  }

  func testCenterX() {
    view.centerX = 10
    XCTAssertEqual(
      view.frame.origin,
      CGPoint(x: 7, y: defaultFrame.origin.y),
      "centerX changes should center frame")
    XCTAssertEqual(
      view.frame.size,
      defaultFrame.size,
      "centerX changes should not modify frame size")
  }

  func testCenterY() {
    view.centerY = 10
    XCTAssertEqual(
      view.frame.origin,
      CGPoint(x: defaultFrame.origin.x, y: 6),
      "centerY changes should center frame")
    XCTAssertEqual(
      view.frame.size,
      defaultFrame.size,
      "centerY changes should not modify frame size")
  }

  func testSize() {
    view.size = .zero
    XCTAssertEqual(
      view.frame.origin,
      defaultFrame.origin,
      "size changes should not modify frame origin")
    XCTAssertEqual(
      view.frame.size,
      .zero,
      "size changes should modify frame size")
  }

  func testWidth() {
    view.width = 10
    XCTAssertEqual(
      view.frame.origin,
      defaultFrame.origin,
      "width changes should not modify frame origin")
    XCTAssertEqual(
      view.frame.size,
      CGSize(width: 10, height: defaultFrame.size.height),
      "width changes should just modify frame width")
  }

  func testHeight() {
    view.height = 10
    XCTAssertEqual(
      view.frame.origin,
      defaultFrame.origin,
      "height changes should not modify frame origin")
    XCTAssertEqual(
      view.frame.size,
      CGSize(width: defaultFrame.size.width, height: 10),
      "height changes should just modify frame height")
  }

  func testTop() {
    view.top = 10
    XCTAssertEqual(
      view.frame.origin,
      CGPoint(x: defaultFrame.origin.x, y: 10),
      "top changes should just modify frame y")
    XCTAssertEqual(
      view.frame.size,
      defaultFrame.size,
      "top changes should not modify frame size")
  }

  func testRight() {
    view.right = 10
    XCTAssertEqual(
      view.frame.origin,
      CGPoint(x: 10 - defaultFrame.size.width, y: defaultFrame.origin.y),
      "right changes should just modify frame x")
    XCTAssertEqual(
      view.frame.size,
      defaultFrame.size,
      "right changes should not modify frame size")
  }

  func testBottom() {
    view.bottom = 10
    XCTAssertEqual(
      view.frame.origin,
      CGPoint(x: defaultFrame.origin.x, y: 10 - defaultFrame.size.height),
      "bottom changes should just modify frame y")
    XCTAssertEqual(
      view.frame.size,
      defaultFrame.size,
      "bottom changes should not modify frame size")
  }

  func testLeft() {
    view.left = 10
    XCTAssertEqual(
      view.frame.origin,
      CGPoint(x: 10, y: defaultFrame.origin.y),
      "left changes should just modify frame x")
    XCTAssertEqual(
      view.frame.size,
      defaultFrame.size,
      "left changes should not modify frame size")
  }

  func testTop2() {
    view.top2 = 5
    XCTAssertEqual(
      view.frame.origin,
      CGPoint(x: defaultFrame.origin.x, y: 5),
      "top2 changes without a swap should just modify frame y")
    XCTAssertEqual(
      view.frame.size,
      CGSize(width: defaultFrame.size.width, height: 6),
      "top2 changes without a swap should modify frame size")
    // TODO: Test swap behavior.
  }

  func testRight2() {
    view.right2 = 5
    XCTAssertEqual(
      view.frame.origin,
      defaultFrame.origin,
      "right2 changes without a swap should not modify frame origin")
    XCTAssertEqual(
      view.frame.size,
      CGSize(width: 4, height: defaultFrame.size.height),
      "right2 changes without a swap should modify frame size")
    // TODO: Test swap behavior.
  }

  func testBottom2() {
    view.bottom2 = 5
    XCTAssertEqual(
      view.frame.origin,
      defaultFrame.origin,
      "bottom2 changes without a swap should not modify frame origin")
    XCTAssertEqual(
      view.frame.size,
      CGSize(width: defaultFrame.size.width, height: 2),
      "bottom2 changes without a swap should modify frame size")
    // TODO: Test swap behavior.
  }

  func testLeft2() {
    view.left2 = 5
    XCTAssertEqual(
      view.frame.origin,
      CGPoint(x: 5, y: defaultFrame.origin.y),
      "left2 changes without a swap should just modify frame x")
    XCTAssertEqual(
      view.frame.size,
      CGSize(width: 2, height: defaultFrame.size.height),
      "left2 changes without a swap should modify frame size")
    // TODO: Test swap behavior.
  }

  func testSizeToFit() {
    let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 200))
    let label = UILabel(frame: .zero)
    label.text = "lorem ipsum dolor sit amet"
    label.numberOfLines = 5
    containerView.addSubview(label)
    label.sizeToFit(containerView.frame.size)
    XCTAssert(
      label.frame.size.height > 20 && label.frame.size.width <= 20,
      "sizeToFit should size the view to fit given constrained size")
    label.numberOfLines = 1
    label.sizeToFit(containerView.frame.size)
    XCTAssert(
      label.frame.size.height > 20 && label.frame.size.width <= 20,
      "sizeToFit should size the view to fit given constrained size")
  }
}

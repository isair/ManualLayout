//
//  UIScrollViewManualLayoutTests.swift
//  ManualLayout
//
//  Created by Baris Sencan on 06/03/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit
import XCTest
import ManualLayout

internal final class UIScrollViewManualLayoutTests: XCTestCase {
  let defaultContentSize = CGSize(width: 20, height: 20)
  let defaultContentOffset = CGPoint(x: 10, y: 10)
  let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))

  override func setUp() {
    scrollView.contentSize = defaultContentSize
    scrollView.contentOffset = defaultContentOffset
  }

  func testContentWidth() {
    XCTAssertEqual(
      scrollView.contentWidth,
      scrollView.contentSize.width,
      "contentWidth should be equal to contentSize.width")
    scrollView.contentWidth = 30
    XCTAssertEqual(
      scrollView.contentSize,
      CGSize(width: 30, height: defaultContentSize.height),
      "Setting contentWidth should modify contentSize correctly")
  }

  func testContentHeight() {
    XCTAssertEqual(
      scrollView.contentHeight,
      scrollView.contentSize.height,
      "contentHeight should be equal to contentSize.height")
    scrollView.contentHeight = 30
    XCTAssertEqual(
      scrollView.contentSize,
      CGSize(width: defaultContentSize.width, height: 30),
      "Setting contentHeight should modify contentSize correctly")
  }

  func testContentTop() {
    XCTAssert(
      scrollView.contentTop == 0,
      "contentTop should be equal to 0")
  }

  func testContentLeft() {
    XCTAssert(
      scrollView.contentLeft == 0,
      "contentLeft should be equal to 0")
  }

  func testContentBottom() {
    XCTAssertEqual(
      scrollView.contentBottom,
      scrollView.contentSize.height,
      "contentBottom should be equal to contentSize.height")
    scrollView.contentBottom = 30
    XCTAssertEqual(
      scrollView.contentSize,
      CGSize(width: defaultContentSize.width, height: 30),
      "Setting contentBottom should modify contentSize correctly")
  }

  func testContentRight() {
    XCTAssertEqual(
      scrollView.contentRight,
      scrollView.contentSize.width,
      "contentRight should be equal to contentSize.width")
    scrollView.contentRight = 30
    XCTAssertEqual(
      scrollView.contentSize,
      CGSize(width: 30, height: defaultContentSize.height),
      "Setting contentRight should modify contentSize correctly")
  }

  func testViewportTop() {
    XCTAssertEqual(
      scrollView.viewportTop,
      scrollView.contentOffset.y,
      "viewportTop should be equal to contentOffset.y")
    scrollView.viewportTop = 0
    XCTAssertEqual(
      scrollView.contentOffset,
      CGPoint(x: defaultContentOffset.x, y: 0),
      "Setting viewportTop should modify contentOffset correctly")
  }

  func testViewportLeft() {
    XCTAssertEqual(
      scrollView.viewportLeft,
      scrollView.contentOffset.x,
      "viewportLeft should be equal to contentOffset.x")
    scrollView.viewportLeft = 0
    XCTAssertEqual(
      scrollView.contentOffset,
      CGPoint(x: 0, y: defaultContentOffset.y),
      "Setting viewportLeft should modify contentOffset correctly")
  }

  func testViewportBottom() {
    XCTAssertEqual(
      scrollView.viewportBottom,
      scrollView.contentOffset.y + scrollView.frame.size.height,
      "viewportBottom should be equal to contentOffset.y + height")
    scrollView.viewportBottom = 10
    XCTAssertEqual(
      scrollView.contentOffset,
      CGPoint(x: defaultContentOffset.x, y: 0),
      "Setting viewportBottom should modify contentOffset correctly")
  }

  func testViewportRight() {
    XCTAssertEqual(
      scrollView.viewportRight,
      scrollView.contentOffset.x + scrollView.frame.size.width,
      "viewportRight should be equal to contentOffset.x + width")
    scrollView.viewportRight = 10
    XCTAssertEqual(
      scrollView.contentOffset,
      CGPoint(x: 0, y: defaultContentOffset.y),
      "Setting viewportRight should modify contentOffset correctly")
  }
}


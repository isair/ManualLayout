//
//  SmartAssign.swift
//  ManualLayout
//
//  Created by Baris Sencan on 26/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

precedencegroup SmartAssignment {
    assignment: true
}

infix operator =~ : SmartAssignment

@discardableResult
public func =~ (point: inout CGPoint, pointTuple: (CGFloat, CGFloat)) -> CGPoint {
  point = CGPoint(x: pointTuple.0, y: pointTuple.1)
  return point
}

@discardableResult
public func =~ (size: inout CGSize, sizeTuple: (CGFloat, CGFloat)) -> CGSize {
  size = CGSize(width: sizeTuple.0, height: sizeTuple.1)
  return size
}

@discardableResult
public func =~ (rect: inout CGRect, rectTuple: (CGFloat, CGFloat, CGFloat, CGFloat)) -> CGRect {
  rect = CGRect(x: rectTuple.0, y: rectTuple.1, width: rectTuple.2, height: rectTuple.3)
  return rect
}

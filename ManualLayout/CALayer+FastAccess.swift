//
//  CALayer+FastAccesors.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation

public extension CALayer {
  private var anchorKey: String { return "ManualLayout_anchor" }

  var anchor: ManualLayoutAnchor {
    get {
      let numberValue = objc_getAssociatedObject(self, anchorKey) as NSNumber
      return ManualLayoutAnchor(rawValue: numberValue.integerValue)!
    }
    set {
      objc_setAssociatedObject(self, anchorKey, newValue.rawValue, objc_AssociationPolicy(OBJC_ASSOCIATION_RETAIN))
    }
  }

  // MARK: - Position

  var origin: CGPoint {
    get {
      return frame.origin
    }
    set {
      x = newValue.x
      y = newValue.y
    }
  }

  var x: CGFloat {
    get {
      return frame.origin.x
    }
    set {
      frame.origin.x = ManualLayout.snapToPixel(pointCoordinate: newValue)
    }
  }

  var y: CGFloat {
    get {
      return frame.origin.y
    }
    set {
      frame.origin.y = ManualLayout.snapToPixel(pointCoordinate: newValue)
    }
  }

  var center: CGPoint {
    get {
      return CGPoint(x: centerX, y: centerY)
    }
    set {
      centerX = newValue.x
      centerY = newValue.y
    }
  }

  var centerX: CGFloat {
    get {
      return frame.origin.x + frame.size.width / 2
    }
    set {
      x = newValue - frame.size.width / 2
    }
  }

  var centerY: CGFloat {
    get {
      return frame.origin.y + frame.size.height / 2
    }
    set {
      y = newValue - frame.size.height / 2
    }
  }

  // MARK: - Size

  var size: CGSize {
    get {
      return frame.size
    }
    set {
      width = newValue.width
      height = newValue.height
    }
  }

  var width: CGFloat {
    get {
      return frame.size.width
    }
    set {
      frame.size.width = ManualLayout.snapToPixel(pointCoordinate: newValue)
    }
  }

  var height: CGFloat {
    get {
      return frame.size.height
    }
    set {
      frame.size.height = ManualLayout.snapToPixel(pointCoordinate: newValue)
    }
  }

  // MARK: - Edges

  var top: CGFloat {
    get {
      return frame.origin.y
    }
    set {
      y = newValue
    }
  }

  var right: CGFloat {
    get {
      return frame.origin.x + frame.size.width
    }
    set {
      x = newValue - frame.size.width
    }
  }

  var bottom: CGFloat {
    get {
      return frame.origin.y + frame.size.height
    }
    set {
      y = newValue - frame.size.height
    }
  }

  var left: CGFloat {
    get {
      return frame.origin.x
    }
    set {
      x = newValue
    }
  }
}
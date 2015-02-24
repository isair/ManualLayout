//
//  CALayer+FastAccesors.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation

public extension CALayer {

  // MARK: - Position

  var origin: CGPoint {
    get {
      return frame.origin
    }
    set {
      frame.origin = newValue
    }
  }

  var x: CGFloat {
    get {
      return frame.origin.x
    }
    set {
      frame.origin.x = newValue
    }
  }

  var y: CGFloat {
    get {
      return frame.origin.y
    }
    set {
      frame.origin.y = newValue
    }
  }

  var center: CGPoint {
    get {
      return CGPoint(x: centerX, y: centerY)
    }
    set {

    }
  }

  var centerX: CGFloat {
    get {
      return frame.origin.x + frame.size.width / 2
    }
    set {
      frame.origin.x = newValue - frame.size.width / 2
    }
  }

  var centerY: CGFloat {
    get {
      return frame.origin.y + frame.size.height / 2
    }
    set {
      frame.origin.y = newValue - frame.size.height / 2
    }
  }

  // MARK: - Size

  var size: CGSize {
    get {
      return frame.size
    }
    set {
      frame.size = newValue
    }
  }

  var width: CGFloat {
    get {
      return frame.size.width
    }
    set {
      frame.size.width = newValue
    }
  }

  var height: CGFloat {
    get {
      return frame.size.height
    }
    set {
      frame.size.height = newValue
    }
  }

  // MARK: - Edges

  var top: CGFloat {
    get {
      return frame.origin.y
    }
    set {
      if newValue <= bottom {
        frame.size.height += top - newValue
        frame.origin.y = newValue
      } else {
        // Swap top with bottom.
        let newTop = bottom
        frame.size.height = newValue - newTop
        frame.origin.y = newTop
      }
    }
  }

  var right: CGFloat {
    get {
      return frame.origin.x + frame.size.width
    }
    set {
      if newValue >= left {
        frame.size.width += newValue - right
      } else {
        // Swap left with right.
        let newRight = left
        frame.size.width = newRight - newValue
        frame.origin.x = newValue
      }
    }
  }

  var bottom: CGFloat {
    get {
      return frame.origin.y + frame.size.height
    }
    set {
      if newValue >= top {
        frame.size.height += newValue - bottom
      } else {
        // Swap bottom with top.
        let newBottom = top
        frame.size.height = newBottom - newValue
        frame.origin.y = newValue
      }
    }
  }

  var left: CGFloat {
    get {
      return frame.origin.x
    }
    set {
      if newValue <= right {
        frame.size.width += left - newValue
        frame.origin.x = newValue
      } else {
        // Orange is the new black.
        // let newBlack = orange
        let newLeft = right
        frame.size.width = newValue - newLeft
        frame.origin.x = newLeft
      }
    }
  }
}
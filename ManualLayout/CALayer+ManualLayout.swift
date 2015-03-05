//
//  CALayer+FastAccesors.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

internal func snapToPixel(pointCoordinate coordinate: CGFloat) -> CGFloat {
  let screenScale = UIScreen.mainScreen().scale
  return round(coordinate * screenScale) / screenScale
}

public extension CALayer {

  // MARK: - Position

  public var origin: CGPoint {
    get {
      return frame.origin
    }
    set {
      x = newValue.x
      y = newValue.y
    }
  }

  public var x: CGFloat {
    get {
      return frame.origin.x
    }
    set {
      frame.origin.x = snapToPixel(pointCoordinate: newValue)
    }
  }

  public var y: CGFloat {
    get {
      return frame.origin.y
    }
    set {
      frame.origin.y = snapToPixel(pointCoordinate: newValue)
    }
  }

  public var center: CGPoint {
    get {
      return CGPoint(x: centerX, y: centerY)
    }
    set {
      centerX = newValue.x
      centerY = newValue.y
    }
  }

  public var centerX: CGFloat {
    get {
      return frame.origin.x + frame.size.width / 2
    }
    set {
      x = newValue - frame.size.width / 2
    }
  }

  public var centerY: CGFloat {
    get {
      return frame.origin.y + frame.size.height / 2
    }
    set {
      y = newValue - frame.size.height / 2
    }
  }

  // MARK: - Size

  public var size: CGSize {
    get {
      return frame.size
    }
    set {
      width = newValue.width
      height = newValue.height
    }
  }

  public var width: CGFloat {
    get {
      return frame.size.width
    }
    set {
      frame.size.width = snapToPixel(pointCoordinate: newValue)
    }
  }

  public var height: CGFloat {
    get {
      return frame.size.height
    }
    set {
      frame.size.height = snapToPixel(pointCoordinate: newValue)
    }
  }

  // MARK: - Edges

  public var top: CGFloat {
    get {
      return frame.origin.y
    }
    set {
      y = newValue
    }
  }

  public var right: CGFloat {
    get {
      return frame.origin.x + frame.size.width
    }
    set {
      x = newValue - frame.size.width
    }
  }

  public var bottom: CGFloat {
    get {
      return frame.origin.y + frame.size.height
    }
    set {
      y = newValue - frame.size.height
    }
  }

  public var left: CGFloat {
    get {
      return frame.origin.x
    }
    set {
      x = newValue
    }
  }

  // MARK: - Alternative Edges

  public var top2: CGFloat {
    get {
      return frame.origin.y
    }
    set {
      if newValue <= bottom {
        height += top - newValue
        y = newValue
      } else {
        // Swap top with bottom.
        let newTop = bottom
        height = newValue - newTop
        y = newTop
      }
    }
  }

  public var right2: CGFloat {
    get {
      return frame.origin.x + frame.size.width
    }
    set {
      if newValue >= left {
        width += newValue - right
      } else {
        // Swap left with right.
        let newRight = left
        width = newRight - newValue
        x = newValue
      }
    }
  }

  public var bottom2: CGFloat {
    get {
      return frame.origin.y + frame.size.height
    }
    set {
      if newValue >= top {
        height += newValue - bottom
      } else {
        // Swap bottom with top.
        let newBottom = top
        height = newBottom - newValue
        y = newValue
      }
    }
  }

  public var left2: CGFloat {
    get {
      return frame.origin.x
    }
    set {
      if newValue <= right {
        width += left - newValue
        x = newValue
      } else {
        // Orange is the new black.
        // let newBlack = orange
        let newLeft = right
        width = newValue - newLeft
        x = newLeft
      }
    }
  }
}
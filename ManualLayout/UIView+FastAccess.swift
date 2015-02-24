//
//  UIView+FastAccess.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation

// I wish there was an easier way to do this in Swift.
public extension UIView {

  public var anchor: CGPoint {
    get {
      return layer.anchor
    }
    set {
      layer.anchor = newValue
    }
  }

  public var origin: CGPoint {
    get {
      return layer.origin
    }
    set {
      layer.origin = newValue
    }
  }

  public var x: CGFloat {
    get {
      return layer.x
    }
    set {
      layer.x = newValue
    }
  }

  public var y: CGFloat {
    get {
      return layer.y
    }
    set {
      layer.y = newValue
    }
  }

  public var centerX: CGFloat {
    get {
      return layer.centerX
    }
    set {
      layer.centerX = newValue
    }
  }

  public var centerY: CGFloat {
    get {
      return layer.centerY
    }
    set {
      layer.centerY = newValue
    }
  }

  public var size: CGSize {
    get {
      return layer.size
    }
    set {
      layer.size = newValue
    }
  }

  public var width: CGFloat {
    get {
      return layer.width
    }
    set {
      layer.width = newValue
    }
  }

  public var height: CGFloat {
    get {
      return layer.height
    }
    set {
      layer.height = newValue
    }
  }

  public var top: CGFloat {
    get {
      return layer.top
    }
    set {
      layer.top = newValue
    }
  }

  public var right: CGFloat {
    get {
      return layer.right
    }
    set {
      layer.right = newValue
    }
  }

  public var bottom: CGFloat {
    get {
      return layer.bottom
    }
    set {
      layer.bottom = newValue
    }
  }

  public var left: CGFloat {
    get {
      return layer.left
    }
    set {
      layer.left = newValue
    }
  }
}

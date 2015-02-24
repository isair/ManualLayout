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

  var anchor: CGPoint {
    get {
      return layer.anchor
    }
    set {
      layer.anchor = newValue
    }
  }

  var origin: CGPoint {
    get {
      return layer.origin
    }
    set {
      layer.origin = newValue
    }
  }

  var x: CGFloat {
    get {
      return layer.x
    }
    set {
      layer.x = newValue
    }
  }

  var y: CGFloat {
    get {
      return layer.y
    }
    set {
      layer.y = newValue
    }
  }

  var size: CGSize {
    get {
      return layer.size
    }
    set {
      layer.size = newValue
    }
  }

  var width: CGFloat {
    get {
      return layer.width
    }
    set {
      layer.width = newValue
    }
  }

  var height: CGFloat {
    get {
      return layer.height
    }
    set {
      layer.height = newValue
    }
  }

  var top: CGFloat {
    get {
      return layer.top
    }
    set {
      layer.top = newValue
    }
  }

  var right: CGFloat {
    get {
      return layer.right
    }
    set {
      layer.right = newValue
    }
  }

  var bottom: CGFloat {
    get {
      return layer.bottom
    }
    set {
      layer.bottom = newValue
    }
  }

  var left: CGFloat {
    get {
      return layer.left
    }
    set {
      layer.left = newValue
    }
  }
}

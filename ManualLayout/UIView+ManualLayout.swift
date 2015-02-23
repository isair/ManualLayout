//
//  UIView+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation

extension UIView {

  public func centerInSuperview() {
    if let superview = self.superview {
      centerInRect(superview.bounds)
    }
  }

  // Proxy methods.
  public func centerInRect(rect: CGRect) { layer.centerInRect(rect) }
  public func centerDimensionInRect(rect: CGRect, dimension: ManualLayoutDimension) { layer.centerDimensionInRect(rect, dimension: dimension) }
}

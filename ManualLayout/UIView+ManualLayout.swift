//
//  UIView+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation

// Proxy ManualLayout methods for UIView.
public extension UIView {
  public func centerInSuperview() { layer.centerInSuperlayer() }
  public func centerDimensionInSuperview(dimension: ManualLayoutDimension) { layer.centerDimensionInSuperlayer(dimension) }
}

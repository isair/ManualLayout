//
//  CALayer+Centering.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation

public extension CALayer {

  public func centerInSuperlayer() {
    frame.origin = ManualLayout.getOriginForCenteringRect(bounds, inContainerOfSize: superlayer.bounds.size)
  }

  public func centerDimensionInSuperlayer(dimension: ManualLayoutDimension) {
    let position = ManualLayout.getPositionForCenteringRectInDimension(bounds, dimension: dimension, inContainerOfSize: superlayer.bounds.size)
    if dimension == .X {
      frame.origin.x = position
    } else {
      frame.origin.y = position
    }
  }
}

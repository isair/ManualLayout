//
//  CALayer+Centering.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation

public extension CALayer {

  public func centerInRect(rect: CGRect) {
    frame.origin = CGPoint(
      x: getOriginXForCenteringRect(bounds, inRect: rect),
      y: getOriginYForCenteringRect(bounds, inRect: rect))
  }

  public func centerDimensionInRect(rect: CGRect, dimension: ManualLayoutDimension) {
    if dimension == .X {
      frame.origin.x = getOriginXForCenteringRect(bounds, inRect: rect)
    } else {
      frame.origin.y = getOriginYForCenteringRect(bounds, inRect: rect)
    }
  }
}

private func getOriginXForCenteringRect(rect: CGRect, inRect container: CGRect) -> CGFloat {
  return container.origin.x + (container.size.width - rect.size.width) / 2
}

private func getOriginYForCenteringRect(rect: CGRect, inRect container: CGRect) -> CGFloat {
  return container.origin.y + (container.size.height - rect.size.height) / 2
}

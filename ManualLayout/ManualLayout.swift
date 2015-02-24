//
//  Centering.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation

public struct ManualLayout {

  public static func snapToPixel(pointCoordinate coordinate: CGFloat) -> CGFloat {
    let screenScale = UIScreen.mainScreen().scale
    return round(coordinate * screenScale) / screenScale
  }

  public static func getOriginForCenteringRect(rect: CGRect, inRect container: CGRect) -> CGPoint {
    return CGPoint(
      x: getPositionForCenteringRect(rect, dimension: .X, inRect: container),
      y: getPositionForCenteringRect(rect, dimension: .Y, inRect: container))
  }

  public static func getPositionForCenteringRect(rect: CGRect, dimension: ManualLayoutDimension, inRect container: CGRect) -> CGFloat {
    if dimension == .X {
      return container.origin.x + (container.size.width - rect.size.width) / 2
    } else {
      return container.origin.y + (container.size.height - rect.size.height) / 2
    }
  }
}

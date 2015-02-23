//
//  Centering.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation

// MARK: - Centering
public struct ManualLayout {

  public static func getOriginForCenteringRect(rect: CGRect, inContainerOfSize containerSize: CGSize) -> CGPoint {
    return CGPoint(
      x: getPositionForCenteringRectInDimension(rect, dimension: .X, inContainerOfSize: containerSize),
      y: getPositionForCenteringRectInDimension(rect, dimension: .Y, inContainerOfSize: containerSize))
  }

  public static func getPositionForCenteringRectInDimension(rect: CGRect, dimension: ManualLayoutDimension, inContainerOfSize containerSize: CGSize) -> CGFloat {
    if dimension == .X {
      return (containerSize.width - rect.size.width) / 2
    } else {
      return (containerSize.height - rect.size.height) / 2
    }
  }
}

// MARK: - Edge Snapping
extension ManualLayout {
  // TODO
}

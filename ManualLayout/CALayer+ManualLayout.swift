//
//  CALayer+ManualLayout.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation

public extension CALayer {

  public func centerInSuperlayer() {
    frame.origin = ManualLayout.getOriginForCenteringRect(bounds, inRect: superlayer.bounds)
  }

  public func centerDimensionInSuperlayer(dimension: ManualLayoutDimension) {
    let position = ManualLayout.getPositionForCenteringRect(bounds, dimension: dimension, inRect: superlayer.bounds)
    if dimension == .X {
      frame.origin.x = position
    } else {
      frame.origin.y = position
    }
  }

  public func snapEdgesToSuperlayerEdges(inset: CGFloat = 0, excludedEdges: [ManualLayoutEdge] = [ManualLayoutEdge]()) {
    snapEdgesToSuperlayerEdges(insets: UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset), excludedEdges: excludedEdges)
  }

  public func snapEdgesToSuperlayerEdges(insets: UIEdgeInsets = UIEdgeInsetsZero, excludedEdges: [ManualLayoutEdge] = [ManualLayoutEdge]()) {
    // TODO
  }

  public func snapEdgeToSuperlayerEdge(edge: ManualLayoutEdge, inset: CGFloat = 0) {
    // TODO
  }
}

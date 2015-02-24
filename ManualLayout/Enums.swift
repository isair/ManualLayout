//
//  Enums.swift
//  ManualLayout
//
//  Created by Baris Sencan on 23/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import Foundation

public enum ManualLayoutDimension {
  case X, Y
}

public enum ManualLayoutEdge {
  case Top, Right, Bottom, Left
}

public enum ManualLayoutAnchor: Int {
  case TopLeft, TopRight, BottomRight, BottomLeft, Center
}
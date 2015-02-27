//
//  UIViewController+LayoutGuides.swift
//  ManualLayout
//
//  Created by Baris Sencan on 25/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

public extension UIViewController {

  public var top: CGFloat {
    return topLayoutGuide.length
  }

  public var right: CGFloat { // For convenience.
    return view.width
  }

  public var bottom: CGFloat {
    return view.height - bottomLayoutGuide.length
  }

  public var left: CGFloat { // For convenience.
    return 0
  }
}

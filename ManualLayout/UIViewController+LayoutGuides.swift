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

  public var bottom: CGFloat {
    return view.height - bottomLayoutGuide.length
  }
}

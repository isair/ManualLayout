//
//  ExampleViewController.swift
//  SimpleExample
//
//  Created by Baris Sencan on 30/03/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit
import ManualLayout

internal final class ExampleViewController: UIViewController {
  let titleLabel = UILabel(frame: CGRectZero)
  let subtitleLabel = UILabel(frame: CGRectZero)
  let yinView = UIView(frame: CGRectZero)

  override init() {
    super.init(nibName: nil, bundle: nil)
    titleLabel.attributedText = NSAttributedString(
      string: "Hello World!",
      attributes: generateTextStyle())
    subtitleLabel.attributedText = NSAttributedString(
      string: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      attributes: generateTextStyle(smaller: true))
    yinView.backgroundColor = UIColor.blackColor()
  }

  required init(coder aDecoder: NSCoder) {
    fatalError("storyboards are incompatible with truth and beauty")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.whiteColor()
    view.addSubview(titleLabel)
    view.addSubview(subtitleLabel)
    view.addSubview(yinView)
  }

  override func viewWillLayoutSubviews() {
    titleLabel.sizeToFit()
    titleLabel.top = top + 20
    titleLabel.centerX = centerX
    subtitleLabel.sizeToFit()
    subtitleLabel.top = titleLabel.bottom + 8
    subtitleLabel.centerX = centerX
    yinView.top = height / 2
    yinView.right2 = right
    yinView.bottom2 = bottom
  }

  private func generateTextStyle(smaller: Bool = false) -> [NSObject: AnyObject] {
    return [
      NSFontAttributeName: UIFont.systemFontOfSize(smaller ? 14 : 18),
      NSForegroundColorAttributeName: UIColor.blackColor()
    ]
  }
}

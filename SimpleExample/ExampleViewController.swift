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
  let titleLabel = UILabel(frame: .zero)
  let subtitleLabel = UILabel(frame: .zero)
  let yinView = UIView(frame: .zero)

  init() {
    super.init(nibName: nil, bundle: nil)
    titleLabel.attributedText = NSAttributedString(
      string: "Hello World!",
      attributes: generateTextStyle())
    subtitleLabel.attributedText = NSAttributedString(
      string: "Lorem ipsum dolor sit amet, pro eu epicurei oportere similique, everti postulant repudiandae ei nam.",
      attributes: generateTextStyle(smaller: true))
    subtitleLabel.textAlignment = .Center
    subtitleLabel.numberOfLines = 3
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
    subtitleLabel.sizeToFit(width - 40, height / 2 - titleLabel.bottom - 16)
    subtitleLabel.top = titleLabel.bottom + 8
    subtitleLabel.centerX = centerX
    yinView.top = height / 2
    yinView.right2 = right
    yinView.bottom2 = bottom
  }

  private func generateTextStyle(smaller smaller: Bool = false) -> [String: AnyObject] {
    return [
      NSFontAttributeName: UIFont.systemFontOfSize(smaller ? 14 : 18),
      NSForegroundColorAttributeName: UIColor.blackColor()
    ]
  }
}

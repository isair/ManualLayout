[![Gitter](https://badges.gitter.im/JOIN CHAT.svg)](https://gitter.im/isair/ManualLayout?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Support via Gratipay](https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.png)](https://gratipay.com/bsencan91/)

**This library is under construction.**

#Table of Contents

1. [Introduction](#introduction)
2. [Installation](#installation)
3. [Usage](#usage)
4. [API Cheat Sheet](#api-cheat-sheet)

#Introduction

The purpose of this library is to provide a flexible and easy to use layout API that does its work on CGRects.

__Requires iOS 8 or later and Xcode 6.1+__

#Installation

###[Carthage](https://github.com/Carthage/Carthage#installing-carthage)

```
echo 'github "isair/ManualLayout"' > Cartfile
carthage update
```

###[Cocoapods](https://github.com/CocoaPods/CocoaPods)

Not yet available.

#Usage

Coming soon.

#API Cheat Sheet

Properties provide a simple layout API while methods provide a more powerful one.

###CALayer/UIView Properties

```swift
var anchor: ManualLayoutAnchor // Explained below.

// For fast positioning.
var origin: CGSize
var x: CGFloat 
var y: CGFloat
var centerX: CGFloat
var centerY: CGFloat
var top: CGFloat
var right: CGFloat
var bottom: CGFloat
var left: CGFloat

// For fast sizing.
var size: CGSize
var width: CGFloat
var height: CGFloat
```

It is very important to keep in mind that `anchor` effects all positioning and sizing done on the view/layer. By default it is set to .TopLeft to match behavior with UIKit.

###CALayer/UIView Methods

Replace the word "layer" with "view" for the UIView methods.

```swift
func centerInSuperlayer()
func centerDimensionInSuperlayer(dimension: ManualLayoutDimension)
```

More coming soon.

###ManualLayout Methods

```swift
static func getOriginForCenteringRect(rect: CGRect, inRect container: CGRect) -> CGPoint
static func getPositionForCenteringRect(rect: CGRect, dimension: ManualLayoutDimension, inRect container: CGRect) -> CGFloat
```

More coming soon.

[![Gitter](https://badges.gitter.im/JOIN CHAT.svg)](https://gitter.im/isair/ManualLayout?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Support via Gratipay](https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.png)](https://gratipay.com/bsencan91/)

**This library is under construction.**

##Table of Contents

1. [Introduction](#introduction)
2. [Installation](#installation)
3. [Usage](#usage)
4. [API](#api)

##Introduction

The purpose of this library is to provide a flexible and easy to use layout API that does its work on CGRects.

__Requires iOS 8 or later and Xcode 6.1+__

##Installation

```
echo 'github "isair/ManualLayout"' > Cartfile
carthage update
```

##Usage

Coming soon.

##API

###CALayer/UIView Properties

```swift
var origin: CGSize
var x: CGFloat 
var y: CGFloat

var right: CGFloat
var bottom: CGFloat
var centerX: CGFloat
var centerY: CGFloat

var size: CGSize
var width: CGFloat
var height: CGFloat
```

Not implemented yet.

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

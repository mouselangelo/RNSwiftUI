//
//  CounterViewManager.swift
//  RNSwiftUI
//
//  Created by Chetan Agarwal on 29.10.18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

@objc(CounterViewManager)
class CounterViewManager: RCTViewManager {
  
  override func view() -> UIView! {
    let label = UILabel()
    label.text = "Swift counter"
    label.textAlignment = .center
    return label
  }
}

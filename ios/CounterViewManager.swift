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
    return CounterView()
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
}

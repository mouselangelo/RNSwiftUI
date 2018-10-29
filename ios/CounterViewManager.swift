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
  
  @objc func updateFromManager(_ node: NSNumber, count: NSNumber) {
    DispatchQueue.main.async {
      // NOTE: add #import <React/RCTUIManager.h> to expose uiManager
      guard let component
        = self.bridge.uiManager.view(forReactTag: node) as? CounterView else {
        return
      }
      component.update(value: count)
    }
  }
}

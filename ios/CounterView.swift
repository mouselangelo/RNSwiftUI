//
//  CounterView.swift
//  RNSwiftUI
//
//  Created by Chetan Agarwal on 29.10.18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import UIKit

class CounterView: UIView {
  
  var count = 0 {
    didSet {
      button.setTitle(String(describing: count), for: .normal)
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(button)
    increment()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  lazy var button: UIButton! = {
    let b = UIButton.init(type: UIButton.ButtonType.system)
    b.titleLabel?.font = UIFont.systemFont(ofSize: 60)
    b.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    b.setTitleColor(UIColor.orange, for: .normal)
    b.addTarget(self, action: #selector(increment), for: .touchUpInside)
    return b
  }()
  
  @objc
  func increment() {
    count += 1
  }
}

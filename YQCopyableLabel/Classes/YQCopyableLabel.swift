//
//  YQCopyableLabel.swift
//  Pods
//
//  Created by 王叶庆 on 2021/11/30.
//

import UIKit

public class YQCopyableLabel: UILabel {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    public init() {
        super.init(frame: CGRect.zero)
        commonInit()
    }
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        isUserInteractionEnabled = true
        let guesture = UILongPressGestureRecognizer(target: self, action: #selector(pressAction(_:)))
        self.addGestureRecognizer(guesture)
    }

    public override var canBecomeFirstResponder: Bool {
        return true
    }

    @objc func pressAction(_ sender: UILongPressGestureRecognizer) {
        guard sender.state == .began else {return}
        becomeFirstResponder()
        let menu = UIMenuController.shared
        let copy = UIMenuItem(title: "复制", action: #selector(copyText))
        menu.menuItems = [copy]
        menu.setTargetRect(bounds, in: self)
        menu.setMenuVisible(true, animated: true)
    }
    
    @objc func copyText() {
        UIPasteboard.general.string = text ?? attributedText?.string
    }
      
    public override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
      if action == #selector(copyText) {
          return true
      } else {
          return false
      }
  }
}

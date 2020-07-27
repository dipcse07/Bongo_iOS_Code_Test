//
//  RoundedButton.swift
//  Bongo iOS Code Test
//
//  Created by MD SAZID HASAN DIP on 26/7/20.
//  Copyright © 2020 MD SAZID HASAN DIP. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
  private func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
}

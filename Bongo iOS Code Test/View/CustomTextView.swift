//
//  CustomTextView.swift
//  Bongo iOS Code Test
//
//  Created by MD SAZID HASAN DIP on 26/7/20.
//  Copyright © 2020 MD SAZID HASAN DIP. All rights reserved.
//

import UIKit
@IBDesignable
class CustomTextView: UITextView {

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
        self.layer.borderColor = UIColor(red:SHADOW_COLOR,green: SHADOW_COLOR, blue: SHADOW_COLOR,alpha: 0.1).cgColor
        self.layer.borderWidth = 1.0
       
      }
   
}

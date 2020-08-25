//
//  SGButtons.swift
//  Calculator35
//
//  Created by Alex Lundquist on 8/24/20.
//

import UIKit

class SGButtons: UIButton {
	
	override func awakeFromNib() {
		super.awakeFromNib()
		//        self.backgroundColor = .yellow
		self.addBackgroundColor()
		self.addAccentBorder(width: 6)
		self.setTitleColor(UIColor.padTextColor, for: .normal)
		self.addCornerRadius(24)
	}
}

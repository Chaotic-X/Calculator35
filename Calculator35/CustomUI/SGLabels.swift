//
//  SGLabels.swift
//  Calculator35
//
//  Created by Alex Lundquist on 8/24/20.
//

import UIKit

class SGLabels: UILabel {
	
	override func awakeFromNib() {
		super.awakeFromNib()
		
	}
	
	func setUpUI(){
		self.addBackgroundColor()
		self.addCornerRadius()
		self.addAccentBorder()
		self.updateFontTo(fontName: FontNames.micrenc)
	}
	
	func updateFontTo(fontName: String){
		guard let size = self.font?.pointSize else {return}
		self.font = UIFont(name: fontName, size: size)
	}
}

//
//  StyleGuide.swift
//  Calculator35
//
//  Created by Alex Lundquist on 8/24/20.
//

import UIKit

extension UIView {
	
	func addCornerRadius(_ radius: CGFloat = 8){
		self.layer.masksToBounds = true
		self.layer.cornerRadius = radius
	}
	func addAccentBorder(width: CGFloat = 1, color: UIColor = .cyan){
		self.layer.borderWidth = width
		self.layer.borderColor = color.cgColor
	}
	func addBackgroundColor(color: UIColor = .backgroundColor){
		self.layer.backgroundColor = color.cgColor
	}
}

struct FontNames {
	static let micrenc = "MICREncoding"
}

extension UIColor {
	static let backgroundColor = UIColor(named: "backgroundColor")!
	static let clearButton1 = UIColor(named: "clearButton1")!
	static let clearButton2 = UIColor(named: "clearButton2")!
	static let clearButtonBorder = UIColor(named: "clearButtonBorder")!
	static let labelBorder = UIColor(named: "labelBorder")!
	static let labelgradientBG1 = UIColor(named: "labelgradientBG1")!
	static let labelgradientBG2 = UIColor(named: "labelgradientBG2")!
	static let numberButton1 = UIColor(named: "numberButton1")!
	static let numberButton2 = UIColor(named: "numberButton2")!
	static let numberButtonBorder = UIColor(named: "numberButtonBorder")!
	static let operatorButton1 = UIColor(named: "operatorButton1")!
	static let operatorButton2 = UIColor(named: "operatorButton2")!
	static let operatorButtonBorder = UIColor(named: "operatorButtonBorder")!
	static let padTextColor = UIColor(named: "padTextColor")!
	static let totalButton1 = UIColor(named: "totalButton1")!
	static let totalButton2 = UIColor(named: "totalButton2")!
	static let totalButtonBorder = UIColor(named: "totalButtonBorder")!
	static let totalTextColor = UIColor(named: "totalTextColor")!
}

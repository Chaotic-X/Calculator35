//
//  CalculatorViewController.swift
//  Calculator35
//
//  Created by Alex Lundquist on 8/24/20.
//

import UIKit

class CalculatorViewController: UIViewController {
	@IBOutlet weak var totalLabel: UILabel!
	@IBOutlet weak var numberButtons: SGButtons!
	
	var numberOnScreen: Double = 0
	var previousNumber: Double = 0
	var performingMath = false
	var operation = 0
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
	}
	fileprivate func setupUI(){
		totalLabel.addCornerRadius()
		totalLabel.addAccentBorder(width: 4, color: .labelBorder)
		totalLabel.font = UIFont(name: FontNames.micrenc, size: 96)
		totalLabel.addBackgroundColor(color: .labelgradientBG1)
		totalLabel.textColor = .totalTextColor
		switch numberButtons.titleLabel?.text {
			case "𝟘","𝟙","𝟚","𝟛","𝟜","𝟝","𝟞","𝟟","𝟠","𝟡":
				numberButtons.addBackgroundColor(color: .numberButton2)
			case "C":
				numberButtons.addBackgroundColor(color: .clearButton2)
			default:
				numberButtons.addBackgroundColor(color: .operatorButton2)
		}
		
	}
	
	@IBAction func numButtonTapped(_ sender: UIButton) {
		if performingMath == true {
			totalLabel.text = String(sender.tag - 1)
			numberOnScreen = Double(totalLabel.text!)!
			performingMath = false
			
		}else {
			totalLabel.text = totalLabel.text! + String(sender.tag - 1)
			numberOnScreen = Double(totalLabel.text!)!
		}
	}
	@IBAction func mathButtonTapped(_ sender: UIButton) {
		if totalLabel.text != "" && sender.tag != 11 && sender.tag != 16{
			previousNumber = Double(totalLabel.text!)!
			if sender.tag == 12 { //Divide
				totalLabel.text = "÷"
			}
			if sender.tag == 13 { //Multiply
				totalLabel.text = "×"
			}
			if sender.tag == 14 { //Subtract
				totalLabel.text = "−"
			}
			if sender.tag == 15 { //Add
				totalLabel.text = "+"
			}
			operation = sender.tag
			performingMath = true
		}else if sender.tag == 16 {
			if operation == 12{ //Divide
				totalLabel.text = String(previousNumber / numberOnScreen)
			}else if operation == 13{ //Multiply
				totalLabel.text = String(previousNumber * numberOnScreen)
			}else if operation == 14{ //Subtract
				totalLabel.text = String(previousNumber - numberOnScreen)
			}else if operation == 15{ //Add
				totalLabel.text = String(previousNumber + numberOnScreen)
			}
		}else if sender.tag == 11{
			totalLabel.text = ""
			previousNumber = 0
			numberOnScreen = 0
			operation = 0
		}
	}
	@IBAction func clearButtonTapped(_ sender: UIButton) {
		totalLabel.text = ""
	}
}//End of Class

